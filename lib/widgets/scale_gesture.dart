import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:flutter/gestures.dart';
import 'dart:math' as math;

class ScalingGestureDetector extends StatefulWidget {
  final Widget child;
  final void Function(Offset initialPoint)? onPanStart;
  final void Function(Offset initialPoint, Offset delta)? onPanUpdate;
  final void Function()? onPanEnd;

  final void Function(Offset initialFocusPoint)? onScaleStart;
  final void Function(
    Offset changedFocusPoint,
    double scale,
    double rotate,
  )? onScaleUpdate;
  final void Function()? onScaleEnd;

  final void Function(double dx)? onHorizontalDragUpdate;
  final void Function(double dy)? onVerticalDragUpdate;

  ScalingGestureDetector({
    required this.child,
    this.onPanStart,
    this.onPanUpdate,
    this.onPanEnd,
    this.onScaleStart,
    this.onScaleUpdate,
    this.onScaleEnd,
    this.onHorizontalDragUpdate,
    this.onVerticalDragUpdate,
  });

  @override
  _ScalingGestureDetectorState createState() => _ScalingGestureDetectorState();
}

class _ScalingGestureDetectorState extends State<ScalingGestureDetector> {
  final List<Touch> _touches = [];
  late double _initialScalingDistance;
  late double initialRotate;

  @override
  Widget build(BuildContext context) {
    return RawGestureDetector(
      child: widget.child,
      gestures: {
        ImmediateMultiDragGestureRecognizer:
            GestureRecognizerFactoryWithHandlers<
                ImmediateMultiDragGestureRecognizer>(
          () => ImmediateMultiDragGestureRecognizer(),
          (ImmediateMultiDragGestureRecognizer instance) {
            instance.onStart = (Offset offset) {
              final touch = Touch(
                offset,
                (drag, details) => _onTouchUpdate(drag, details),
                (drag, details) => _onTouchEnd(drag, details),
              );
              _onTouchStart(touch);
              return touch;
            };
          },
        ),
      },
    );
  }

  void _onTouchStart(Touch touch) {
    _touches.add(touch);
    if (_touches.length == 1) {
      if (widget.onPanStart != null)
        widget.onPanStart?.call(touch._startOffset);
    } else if (_touches.length == 2) {
      _initialScalingDistance =
          (_touches[0]._currentOffset - _touches[1]._currentOffset).distance;

      final _xDis =
          _touches[0]._currentOffset.dx - _touches[1]._currentOffset.dx;
      final _yDis =
          _touches[1]._currentOffset.dy - _touches[0]._currentOffset.dy;

      log(_yDis.toString(), name: 'Y');
      log(_xDis.toString(), name: 'X');

      final double isIt = (_xDis < 0.0) ? 0.0 : math.pi;
      initialRotate = math.atan(_yDis / _xDis) + isIt;
      log(initialRotate.toString(), name: 'Rotate');

      if (widget.onScaleStart != null) {
        widget.onScaleStart?.call(
            (_touches[0]._currentOffset + _touches[1]._currentOffset) / 2);
      }
    } else {
      // Do nothing/ ignore
    }
  }

  final _DXY = 10;

  void _onTouchUpdate(Touch touch, DragUpdateDetails details) {
    assert(_touches.isNotEmpty);
    touch._currentOffset = details.localPosition;

    if (_touches.length == 1) {
      if (widget.onPanUpdate != null)
        widget.onPanUpdate?.call(
            touch._startOffset, details.localPosition - touch._startOffset);

      if (widget.onHorizontalDragUpdate != null) {
        final dx = (details.localPosition.dx - touch._startOffset.dx).abs();
        if (dx > _DXY)
          widget.onHorizontalDragUpdate?.call(
              (details.localPosition.dx - touch._startOffset.dx)
                  .clamp(-2.0, 2.0));
      }

      if (widget.onVerticalDragUpdate != null) {
        final dy = (details.localPosition.dy - touch._startOffset.dy).abs();
        if (dy > _DXY)
          widget.onVerticalDragUpdate?.call(
              (details.localPosition.dy - touch._startOffset.dy)
                  .clamp(-2.0, 2.0));
      }
    } else {
      // TODO average of ALL offsets, not only 2 first
      var newDistance =
          (_touches[0]._currentOffset - _touches[1]._currentOffset).distance;
      // log((initialRoutate / (2 * math.pi) * 360).toString());

      final _xDis =
          _touches[0]._currentOffset.dx - _touches[1]._currentOffset.dx;
      final _yDis =
          _touches[1]._currentOffset.dy - _touches[0]._currentOffset.dy;

      // log(_yDis.toString(), name: 'Y');
      // log(_xDis.toString(), name: 'X');
      final double isIt = (_xDis < 0.0) ? 0.0 : math.pi;
      final _currentRotate = math.atan(_yDis / _xDis) + isIt;

      // log(initialRotate.toString(), name: 'Rotate');

      if (widget.onScaleUpdate != null) {
        widget.onScaleUpdate?.call(
            (_touches[0]._currentOffset + _touches[1]._currentOffset) / 2,
            newDistance / _initialScalingDistance,
            initialRotate - _currentRotate);
      }
    }
  }

  void _onTouchEnd(Touch touch, DragEndDetails details) {
    _touches.remove(touch);
    if (_touches.length == 0) {
      if (widget.onPanEnd != null) widget.onPanEnd?.call();
    } else if (_touches.length == 1) {
      if (widget.onScaleEnd != null) widget.onScaleEnd?.call();

      // Restart pan
      _touches[0]._startOffset = _touches[0]._currentOffset;
      if (widget.onPanStart != null)
        widget.onPanStart?.call(_touches[0]._startOffset);
    }
  }
}

class Touch extends Drag {
  Offset _startOffset;
  late Offset _currentOffset;

  final void Function(Touch drag, DragUpdateDetails details)? onUpdate;
  final void Function(Touch drag, DragEndDetails details)? onEnd;

  Touch(this._startOffset, this.onUpdate, this.onEnd) {
    _currentOffset = _startOffset;
  }

  @override
  void update(DragUpdateDetails details) {
    super.update(details);
    onUpdate?.call(this, details);
  }

  @override
  void end(DragEndDetails details) {
    super.end(details);
    onEnd?.call(this, details);
  }
}
