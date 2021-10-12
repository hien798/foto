import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:collection/collection.dart';
import 'package:foto/bloc/bloc.dart';
import 'package:foto/features/editor/editor.dart';
import 'package:foto/models/editor/editor.dart';
import 'package:foto/resources/resource.dart';
import 'package:foto/share/share.dart';
import 'package:foto/widgets/widget.dart';

class EditorScreen extends StatefulWidget {
  static const route = 'editor';

  const EditorScreen({Key? key}) : super(key: key);

  @override
  _EditorScreenState createState() => _EditorScreenState();
}

class _EditorScreenState extends State<EditorScreen> {
  List<ItemViewModel> _itemViews = [];
  late TrashCubit _trashCubit;
  late EditorCubit _editorCubit;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    _trashCubit = BlocProvider.of<TrashCubit>(context);
    _editorCubit = BlocProvider.of<EditorCubit>(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      style: LayoutStyle.light,
      child: BlocBuilder<EditorCubit, EditorState>(
        buildWhen: (p, c) => c is FilterLoaded,
        builder: (context, state) {
          Filter filter = Filter.IDENTITY;
          if (state is FilterLoaded) {
            filter = FilterEx.fromText(state.filter);
          }
          return Column(
            children: [
              CommonAppBar(title: 'Photo Editor'),
              Expanded(
                child: InteractiveViewer(
                  maxScale: 3,
                  minScale: 0.2,
                  child: Stack(
                    children: [
                      Positioned.fill(
                          child: Container(
                        color: Colors.black,
                      )),
                      Align(
                        alignment: Alignment.center,
                        child: BlocBuilder<EditorCubit, EditorState>(
                          buildWhen: (p, c) => c is ImageLoaded,
                          builder: (context, state) {
                            double ratio = 2 / 3;
                            File? file;
                            if (state is ImageLoaded) {
                              ratio = state.ratio ?? 2 / 3;
                              file = File(state.image);
                            }
                            return AspectRatio(
                              aspectRatio: ratio,
                              child: ColorFiltered(
                                colorFilter: ColorFilter.matrix(filter.matrix),
                                child: Stack(
                                  children: [
                                    Positioned.fill(
                                      child: file != null
                                          ? Image.file(
                                              file,
                                              fit: BoxFit.cover,
                                            )
                                          : Container(color: Colors.white),
                                    ),
                                    _buildItemView(),
                                    _buildTrash(),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              _buildToolBar(filter),
            ],
          );
        },
      ),
    );
  }

  Widget _buildItemView() {
    return BlocBuilder<EditorCubit, EditorState>(
      buildWhen: (p, c) => c is ItemsLoaded,
      builder: (context, state) {
        if (state is ItemsLoaded) {
          print('ItemsLoaded: $_itemViews');
          _itemViews = state.items ?? [];
        }
        return Stack(
          children: List.generate(_itemViews.length, (index) {
            final e = _itemViews[index];
            print('Item $index: ${e.key}');
            if (e.type == 1) {
              return StickerItem(
                key: Key(e.key ?? ''),
                initialScale: e.scale,
                initialOffset: Offset(e.dx, e.dy),
                initialSticker: e.value,
                data: e.key,
                onTap: () {},
                onLongDragStarted: () {
                  _trashCubit.onUpdate(1);
                },
                onLongDragUpdate: (dt) {},
                onLongDragEnd: (dt) {
                  _trashCubit.onUpdate(0);
                },
              );
            }
            // Text
            if (e.type == 2) {
              return StickerItem();
            }
            // Image
            if (e.type == 3) {}
            return StickerItem(data: e);
          }),
        );
      },
    );
  }

  Widget _buildTrash() {
    return BlocBuilder<TrashCubit, int>(
      builder: (context, state) {
        double opacity = 0.0;
        double size = 44.0;
        switch (state) {
          case 0:

            /// 0: No Action, onAccept, onEndDrag
            opacity = 0.0;
            size = 44.0;
            break;
          case 1:

            /// 1: onLongPressStarted, onLeave
            opacity = 0.4;
            size = 44.0;
            break;
          case 2:

            /// 2: On Will Accept
            opacity = 0.8;
            size = 64.0;
            break;
        }
        return Opacity(
          opacity: opacity,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: DragTarget(
              builder: (
                BuildContext context,
                List<String?> candidateData,
                List<dynamic> rejectedData,
              ) {
                return Container(
                  height: size,
                  width: size,
                  decoration: BoxDecoration(
                    color: Colors.black45,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 28,
                  ),
                );
              },
              onWillAccept: (data) {
                print('onWillAccept $data');
                HapticFeedback.vibrate();
                _trashCubit.onUpdate(2);
                return true;
              },
              onAccept: (data) {
                print('onAccept $data');
                HapticFeedback.heavyImpact();
                if (data != null && data is String) {
                  final items = List<ItemViewModel>.from(_itemViews);
                  final item =
                      items.firstWhereOrNull((element) => element.key == data);
                  if (item != null) {
                    items.remove(item);
                    _editorCubit.onUpdateItems(items);
                  }
                }
                _trashCubit.onUpdate(0);
              },
              onLeave: (data) {
                print('onLeave');
                _trashCubit.onUpdate(1);
              },
            ),
          ),
        );
      },
    );
  }

  Widget _buildToolBar(Filter filter) {
    return EditorToolBar(
      filter: filter,
      onAddItem: (value) {
        switch (value) {
          case ItemViewType.sticker:
            onAddSticker();
            break;
          case ItemViewType.text:
            break;
          case ItemViewType.image:
            break;
        }
      },
      onSelectFilter: (filter) {
        _editorCubit.onUpdateFilter(filter.text);
      },
    );
  }

  void onAddSticker() async {
    final sticker = await StickerDialog.show<String?>();
    if (!sticker.isNullOrEmpty) {
      final key = UniqueKey();
      final stick = ItemViewModel(
        type: 1,
        value: sticker!,
        scale: 1.0,
        dx: 100,
        dy: 100,
        key: key.toString(),
      );
      final items = List<ItemViewModel>.from(_itemViews);
      items.add(stick);
      _editorCubit.onUpdateItems(items);
    }
  }
}
