// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EditorModel _$_$_EditorModelFromJson(Map<String, dynamic> json) {
  return _$_EditorModel(
    image: json['image'] as String,
    filter: json['filter'] as String?,
    items: (json['items'] as List<dynamic>?)
        ?.map((e) => ItemViewModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    createTime: json['createTime'] == null
        ? null
        : DateTime.parse(json['createTime'] as String),
    updateTime: json['updateTime'] == null
        ? null
        : DateTime.parse(json['updateTime'] as String),
  );
}

Map<String, dynamic> _$_$_EditorModelToJson(_$_EditorModel instance) =>
    <String, dynamic>{
      'image': instance.image,
      'filter': instance.filter,
      'items': instance.items,
      'createTime': instance.createTime?.toIso8601String(),
      'updateTime': instance.updateTime?.toIso8601String(),
    };
