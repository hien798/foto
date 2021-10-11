import 'package:freezed_annotation/freezed_annotation.dart';
import '../../models/model.dart';

part 'scale_offset_state.freezed.dart';

@freezed
class ScaleOffsetState with _$ScaleOffsetState {
  const factory ScaleOffsetState({
    required double scale,
    required double dx,
    required double dy,
  }) = _ScaleOffsetState;
}
