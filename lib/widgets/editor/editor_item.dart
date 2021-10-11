import 'package:flutter/material.dart';

class EditorItem<T extends Object> extends StatefulWidget {
  final Widget child;
  final GestureTapCallback? onTap;
  final GestureTapCallback? onDoubleTap;
  final VoidCallback? onLongDragStarted;
  final DragUpdateCallback? onLongDragUpdate;
  final DraggableCanceledCallback? onLongDraggableCanceled;
  final DragEndCallback? onLongDragEnd;
  final VoidCallback? onLongDragCompleted;
  final GestureScaleStartCallback? onScaleStart;
  final GestureScaleUpdateCallback? onScaleUpdate;
  final GestureScaleEndCallback? onScaleEnd;
  final T? data;

  const EditorItem({
    Key? key,
    required this.child,
    this.onTap,
    this.onDoubleTap,
    this.onLongDragStarted,
    this.onLongDragUpdate,
    this.onLongDraggableCanceled,
    this.onLongDragEnd,
    this.onLongDragCompleted,
    this.onScaleStart,
    this.onScaleUpdate,
    this.onScaleEnd,
    this.data,
  }) : super(key: key);

  @override
  _EditorItemState createState() => _EditorItemState();
}

class _EditorItemState extends State<EditorItem> {
  Offset _offset = Offset(100, 100);
  Offset _initOffset = Offset.zero;
  double _scale = 1.0;
  double _initScale = 1.0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: _offset.dx,
      top: _offset.dy,
      child: LongPressDraggable(
        hapticFeedbackOnStart: true,
        data: widget.data,
        onDragStarted: widget.onLongDragStarted,
        onDragUpdate: (dt) {
          setState(() {
            _offset = _offset + dt.delta;
            widget.onLongDragUpdate?.call(dt);
          });
        },
        onDragEnd: widget.onLongDragEnd,
        onDragCompleted: widget.onLongDragCompleted,
        onDraggableCanceled: widget.onLongDraggableCanceled,
        feedback: Container(),
        child: GestureDetector(
          onScaleStart: (dt) {
            _initOffset = _offset;
            _initScale = _scale;
            widget.onScaleStart?.call(dt);
          },
          onScaleUpdate: (dt) {
            setState(() {
              _offset = dt.delta + _initOffset;
              _scale = dt.scale * _initScale;
              widget.onScaleUpdate?.call(dt);
            });
          },
          onScaleEnd: (dt) {
            widget.onScaleEnd?.call(dt);
          },
          onTap: widget.onTap,
          onDoubleTap: widget.onDoubleTap,
          child: Transform.scale(
            scale: _scale,
            child: widget.child,
          ),
        ),
      ),
    );
  }
}
