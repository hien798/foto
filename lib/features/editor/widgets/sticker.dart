import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foto/bloc/bloc.dart';
import 'package:foto/resources/resource.dart';
import 'package:foto/share/share.dart';
import 'package:foto/widgets/widget.dart';

class StickerItem<T extends Object> extends StatefulWidget {
  final String? initialSticker;
  final Offset? initialOffset;
  final double? initialScale;
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
  final ValueChanged<double>? onScaleUpdated;
  final Tuple2Changed<double, double>? onOffsetUpdated;
  final T? data;

  const StickerItem({
    Key? key,
    this.initialSticker,
    this.initialOffset,
    this.initialScale,
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
    this.onScaleUpdated,
    this.onOffsetUpdated,
    this.data,
  }) : super(key: key);

  @override
  State<StickerItem> createState() => _StickerItemState();
}

class _StickerItemState extends State<StickerItem> {
  String _sticker = Images.sticker_cat_2;
  late ScaleOffsetCubit _cubit;

  @override
  void initState() {
    _sticker = widget.initialSticker ?? Images.sticker_cat_2;
    _cubit = ScaleOffsetCubit(
      widget.initialScale,
      widget.initialOffset?.dx,
      widget.initialOffset?.dy,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _cubit,
      child: EditorItem(
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
        onScaleUpdated: widget.onScaleUpdated,
        onOffsetUpdated: widget.onOffsetUpdated,
        data: widget.data,
      ),
    );
  }
}
