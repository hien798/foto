import 'package:flutter/material.dart';
import 'package:foto/resources/resource.dart';
import 'package:foto/widgets/widget.dart';

class StickerItem<T extends Object> extends StatefulWidget {
  final String? initialSticker;
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

  const StickerItem({
    Key? key,
    this.initialSticker,
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
  State<StickerItem> createState() => _StickerItemState();
}

class _StickerItemState extends State<StickerItem> {
  String _sticker = Images.sticker_cat_2;
  @override
  void initState() {
    _sticker = widget.initialSticker ?? Images.sticker_cat_2;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return EditorItem(
      child: SizedBox(
        width: 100,
        height: 100,
        child: AppImage.asset(_sticker, width: 100, height: 100),
      ),
      onTap: widget.onTap,
      onDoubleTap: widget.onDoubleTap,
      onLongDragStarted: widget.onLongDragStarted,
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
}