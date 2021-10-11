import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foto/bloc/bloc.dart';
import 'package:foto/features/editor/editor.dart';
import 'package:foto/models/editor/editor.dart';
import 'package:foto/resources/resource.dart';
import 'package:foto/share/share.dart';
import 'package:foto/widgets/widget.dart';

class EditorScreen extends StatefulWidget {
  static const route = 'editor';
  final String imagePath;
  final Size size;

  const EditorScreen(this.imagePath, this.size, {Key? key}) : super(key: key);

  @override
  _EditorScreenState createState() => _EditorScreenState();
}

class _EditorScreenState extends State<EditorScreen> {
  late final File file;
  List<ItemViewModel> _itemViews = [];
  List<double> _filter = Filter.VINTAGE;
  double _trashOpacity = 0.0;
  double _trashSize = 44.0;

  late TrashCubit _trashCubit;

  @override
  void initState() {
    file = File(widget.imagePath);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    _trashCubit = BlocProvider.of<TrashCubit>(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      style: LayoutStyle.light,
      child: Column(
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
                    child: AspectRatio(
                      aspectRatio: widget.size.width / widget.size.height,
                      child: ColorFiltered(
                        colorFilter: ColorFilter.matrix(_filter),
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: Image.file(
                                file,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Stack(
                              children:
                                  List.generate(_itemViews.length, (index) {
                                final e = _itemViews[index];
                                if (e.type == 1) {
                                  return StickerItem(
                                    data: index,
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
                                return StickerItem(
                                  data: index,
                                );
                              }),
                            ),
                            BlocBuilder<TrashCubit, int>(
                              builder: (context, state) {
                                double opacity = 0.0;
                                double size = 44.0;
                                switch (state) {
                                  case 0: /// 0: No Action, onAccept, onEndDrag
                                    opacity = 0.0;
                                    size = 44.0;
                                    break;
                                  case 1: /// 1: onLongPressStarted, onLeave
                                    opacity = 0.4;
                                    size = 44.0;
                                    break;
                                  case 2: /// 2: On Will Accept
                                    opacity = 0.8;
                                    size = 64.0;
                                    break;
                                }
                                return Opacity(
                                  opacity: opacity,
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: DragTarget(
                                      builder: (BuildContext context,
                                          List<dynamic> candidateData,
                                          List<dynamic> rejectedData) {
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
                                        print('onWillAccept');
                                        HapticFeedback.vibrate();
                                        _trashCubit.onUpdate(2);
                                        return true;
                                      },
                                      onAccept: (data) {
                                        _trashSize = 44.0;
                                        HapticFeedback.heavyImpact();
                                        if (data != null &&
                                            data is int &&
                                            data >= 0 &&
                                            data < _itemViews.length) {
                                          setState(() {
                                            _itemViews.removeAt(data);
                                          });
                                          _trashCubit.onUpdate(0);
                                        }
                                      },
                                      onLeave: (data) {
                                        print('onLeave');
                                        _trashCubit.onUpdate(1);
                                      },
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ToolBar(
            filter: _filter,
            onAddSticker: () {
              setState(() {
                _itemViews.add(ItemViewModel(type: 1, dx: 0, dy: 0));
              });
            },
            onAddText: () {
              setState(() {
                _itemViews.add(ItemViewModel(type: 2, dx: 0, dy: 0));
              });
            },
            onSelectFilter: (filter) {
              setState(() {
                _filter = filter;
              });
            },
          ),
        ],
      ),
    );
  }
}
