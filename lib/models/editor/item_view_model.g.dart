// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_view_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemViewModel _$_$_ItemViewModelFromJson(Map<String, dynamic> json) {
  return _$_ItemViewModel(
    key: json['key'] as String?,
    type: json['type'] as int,
    value: json['value'] as String,
    scale: (json['scale'] as num).toDouble(),
    dx: (json['dx'] as num).toDouble(),
    dy: (json['dy'] as num).toDouble(),
  );
}

Map<String, dynamic> _$_$_ItemViewModelToJson(_$_ItemViewModel instance) =>
    <String, dynamic>{
      'key': instance.key,
      'type': instance.type,
      'value': instance.value,
      'scale': instance.scale,
      'dx': instance.dx,
      'dy': instance.dy,
    };
