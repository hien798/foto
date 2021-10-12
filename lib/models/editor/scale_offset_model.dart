import 'package:freezed_annotation/freezed_annotation.dart';

part 'scale_offset_model.freezed.dart';

part 'scale_offset_model.g.dart';


@freezed
class ScaleOffsetModel with _$ScaleOffsetModel {
  const factory ScaleOffsetModel({
    required double scale,
    required double dx,
    required double dy,
  }) = _ScaleOffsetModel;

  factory ScaleOffsetModel.fromJson(Map<String, dynamic> json) =>
      _$ScaleOffsetModelFromJson(json);
}