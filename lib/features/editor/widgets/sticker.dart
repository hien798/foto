import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foto/bloc/bloc.dart';
import 'package:foto/models/editor/editor.dart';
import 'package:foto/resources/resource.dart';
import 'package:foto/share/share.dart';
import 'package:foto/widgets/widget.dart';

class StickerItem<T extends Object> extends StatefulWidget {
  final String? sticker;
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
  final ValueChanged<ScaleOffsetModel>? onScaleOffsetUpdated;
  final T? data;

  const StickerItem({
    Key? key,
    this.sticker,
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
    this.onScaleOffsetUpdated,
    this.data,
  }) : super(key: key);

  @override
  State<StickerItem> createState() => _StickerItemState();
}

class _StickerItemState extends State<StickerItem> {
  late ScaleOffsetCubit _cubit;

  @override
  void initState() {
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
          child: AppImage.asset(widget.sticker ?? Images.sticker_cat_2, width: 100, height: 100),
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
        onScaleOffsetUpdated: widget.onScaleOffsetUpdated,
        data: widget.data,
      ),
    );
  }
}
