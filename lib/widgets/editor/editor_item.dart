import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foto/bloc/bloc.dart';

class EditorItem<T extends Object> extends StatefulWidget {
  final Widget child;
  final Offset? initialOffset;
  final double? initialScale;
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
    this.initialOffset,
    this.initialScale,
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
  late double _initDx;
  late double _initDy;
  late double _initScale;
  late ScaleOffsetCubit _cubit;

  @override
  void initState() {
    _cubit = BlocProvider.of<ScaleOffsetCubit>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScaleOffsetCubit, ScaleOffsetState>(
      builder: (context, state) {
        return Positioned(
          left: state.dx,
          top: state.dy,
          child: LongPressDraggable(
            hapticFeedbackOnStart: true,
            data: widget.data,
            onDragStarted: widget.onLongDragStarted,
            onDragUpdate: (dt) {
              _cubit.onUpdate(
                dx: state.dx + dt.delta.dx,
                dy: state.dy + dt.delta.dy,
              );
              widget.onLongDragUpdate?.call(dt);
            },
            onDragEnd: widget.onLongDragEnd,
            onDragCompleted: widget.onLongDragCompleted,
            onDraggableCanceled: widget.onLongDraggableCanceled,
            feedback: Container(),
            child: GestureDetector(
              onScaleStart: (dt) {
                _initDx = state.dx;
                _initDy = state.dy;
                _initScale = state.scale;
                widget.onScaleStart?.call(dt);
              },
              onScaleUpdate: (dt) {
                _cubit.onUpdate(
                  scale: _initScale*dt.scale,
                  dx: _initDx + dt.delta.dx,
                  dy: _initDy + dt.delta.dy,
                );
                widget.onScaleUpdate?.call(dt);
              },
              onScaleEnd: (dt) {
                widget.onScaleEnd?.call(dt);
              },
              onTap: widget.onTap,
              onDoubleTap: widget.onDoubleTap,
              child: Transform.scale(
                scale: state.scale,
                child: widget.child,
              ),
            ),
          ),
        );
      },
    );
  }
}
