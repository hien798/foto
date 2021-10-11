import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc.dart';

class ScaleOffsetCubit extends Cubit<ScaleOffsetState> {
  final double? initScale;
  final double? initDx;
  final double? initDy;

  ScaleOffsetCubit(this.initScale, this.initDx, this.initDy)
      : super(ScaleOffsetState(
            scale: initScale ?? 1.0, dx: initDx ?? 100.0, dy: initDy ?? 100.0));

  void onUpdate({double? scale, double? dx, double? dy}) async {
    emit(ScaleOffsetState(
      scale: scale ?? state.scale,
      dx: dx ?? state.dx,
      dy: dy ?? state.dy,
    ));
  }
}
