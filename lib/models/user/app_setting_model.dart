import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_setting_model.freezed.dart';

part 'app_setting_model.g.dart';

@freezed
class AppSettingModel with _$AppSettingModel {
  const factory AppSettingModel({
    String? locale,
    String? theme,
    String? font,
  }) = _AppSettingModel;

  factory AppSettingModel.fromJson(Map<String, dynamic> json) =>
      _$AppSettingModelFromJson(json);
}