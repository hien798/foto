import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foto/features/editor/editor.dart';
import 'package:foto/models/editor/editor.dart';
import 'package:foto/resources/resource.dart';
import 'package:foto/widgets/widget.dart';

class EditorScreen extends StatefulWidget {
  static const route = 'editor';
  final String imagePath;

  const EditorScreen(this.imagePath, {Key? key}) : super(key: key);

  @override
  _EditorScreenState createState() => _EditorScreenState();
}

class _EditorScreenState extends State<EditorScreen> {
  late final File file;

  List<ItemViewModel> _itemViews = [];

  Offset _offset = Offset(100, 100);

  double _trashOpacity = 0.0;
  double _trashSize = 44.0;

  @override
  void initState() {
    file = File(widget.imagePath);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      child: Column(
        children: [
          CommonAppBar(title: 'Photo Editor'),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: InteractiveViewer(
                  maxScale: 3,
                  minScale: 0.2,
                  child: Stack(
                    children: [
                      // Image.file(file),
                      Stack(
                        children: List.generate(_itemViews.length, (index) {
                          final e = _itemViews[index];
                          if (e.type == 1) {
                            return StickerItem(
                              data: index,
                              onTap: () {},
                              onLongDragStarted: () {
                                print('onLongDragStarted');
                                setState(() {
                                  _trashOpacity = 0.5;
                                });
                              },
                              onLongDragUpdate: (dt) {},
                              onLongDragEnd: (dt) {
                                setState(() {
                                  _trashOpacity = 0.0;
                                });
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
                      Opacity(
                        opacity: _trashOpacity,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: DragTarget(
                            builder: (BuildContext context,
                                List<dynamic> candidateData,
                                List<dynamic> rejectedData) {
                              return Container(
                                height: _trashSize,
                                width: _trashSize,
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
                              setState(() {
                                _trashOpacity = 1.0;
                                _trashSize = 64.0;
                              });
                              return true;
                            },
                            onAccept: (data) {
                              _trashSize = 44.0;
                              HapticFeedback.heavyImpact();
                              if (data != null && data is int &&
                                  data >= 0 &&
                                  data < _itemViews.length) {
                                setState(() {
                                  _itemViews.removeAt(data);
                                });
                              }
                            },
                            onLeave: (data) {
                              print('onLeave');
                              setState(() {
                                _trashOpacity = 0.5;
                                _trashSize = 44.0;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          ToolBar(
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
          ),
        ],
      ),
    );
  }

  Widget _buildFace() {
    return Positioned(
      left: _offset.dx,
      top: _offset.dy,
      child: LongPressDraggable(
        feedback: Container(),
        data: 'lalala',
        child: Container(
          height: 100,
          width: 100,
          color: Colors.amber,
          child: Icon(
            Icons.face,
            size: 50,
            color: Colors.amber,
          ),
        ),
        onDragUpdate: (dt) {
          setState(() {
            _offset = Offset(
              _offset.dx + dt.delta.dx,
              _offset.dy + dt.delta.dy,
            );
          });
        },
      ),
    );
  }
}