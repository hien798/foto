import 'package:freezed_annotation/freezed_annotation.dart';

import 'editor.dart';

part 'editor_model.freezed.dart';

part 'editor_model.g.dart';

@freezed
class EditorModel with _$EditorModel {
  const factory EditorModel({
    required String image,
    String? filter,
    List<ItemViewModel>? items,
    DateTime? createTime,
    DateTime? updateTime,
  }) = _EditorModel;

  factory EditorModel.fromJson(Map<String, dynamic> json) =>
      _$EditorModelFromJson(json);
}