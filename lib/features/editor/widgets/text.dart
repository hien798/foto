import 'package:flutter/material.dart';
import 'package:foto/widgets/widget.dart';

class TextItem<T extends Object> extends StatefulWidget {
  final String? initialText;
  final ValueChanged<String>? onChanged;
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

  const TextItem({
    Key? key,
    this.initialText,
    this.onChanged,
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
  _TextItemState createState() => _TextItemState();
}

class _TextItemState extends State<TextItem> {
  late String _text;
  TextStyle _style = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w600,
    color: Colors.red,
  );

  @override
  void initState() {
    _text = widget.initialText ?? 'Text';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return EditorItem(
      child: Text(
        _text,
        style: _style,
        textAlign: TextAlign.center,
      ),
      onTap: _onTap,
      onDoubleTap: widget.onDoubleTap,
      onLongDragStarted: () {
        print('Start');
      },
      onLongDragUpdate: widget.onLongDragUpdate,
      onLongDraggableCanceled: widget.onLongDraggableCanceled,
      onLongDragEnd: widget.onLongDragEnd,
      onLongDragCompleted: widget.onLongDragCompleted,
      onScaleStart: widget.onScaleStart,
      onScaleUpdate: widget.onScaleUpdate,
      onScaleEnd: widget.onScaleEnd,
      data: widget.data,
    );
  }

  void _onTap() {
    // Todo: Implement Tap to open text editor
    widget.onTap?.call();
    // Also onChanged;
  }
}
