import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foto/bloc/bloc.dart';
import 'package:foto/share/share.dart';

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
  final ValueChanged<double>? onScaleUpdated;
  final Tuple2Changed<double, double>? onOffsetUpdated;
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
    this.onScaleUpdated,
    this.onOffsetUpdated,
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
              widget.onLongDragUpdate?.call(dt);
              widget.onOffsetUpdated
                  ?.call(state.dx + dt.delta.dx, state.dy + dt.delta.dy);
              _cubit.onUpdate(
                dx: state.dx + dt.delta.dx,
                dy: state.dy + dt.delta.dy,
              );
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
                widget.onScaleUpdate?.call(dt);
                widget.onScaleUpdated?.call(_initScale * dt.scale);
                widget.onOffsetUpdated
                    ?.call(_initDx + dt.delta.dx, _initDy + dt.delta.dy);
                _cubit.onUpdate(
                  scale: _initScale * dt.scale,
                  dx: _initDx + dt.delta.dx,
                  dy: _initDy + dt.delta.dy,
                );
              },
              onScaleEnd: (dt) {
                widget.onScaleEnd?.call(dt);
              },
              onTap: widget.onTap,
              onDoubleTap: widget.onDoubleTap,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Text(
                  //   '${widget.data}',
                  //   style: TextStyle(
                  //     color: Colors.black,
                  //     fontSize: 20,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                  Transform.scale(
                    scale: state.scale,
                    child: widget.child,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
