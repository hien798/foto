// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_history_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DateHistoryRequest _$_$_DateHistoryRequestFromJson(
    Map<String, dynamic> json) {
  return _$_DateHistoryRequest(
    from_date: json['from_date'] == null
        ? null
        : DateTime.parse(json['from_date'] as String),
    to_date: json['to_date'] == null
        ? null
        : DateTime.parse(json['to_date'] as String),
  );
}

Map<String, dynamic> _$_$_DateHistoryRequestToJson(
        _$_DateHistoryRequest instance) =>
    <String, dynamic>{
      'from_date': instance.from_date?.toIso8601String(),
      'to_date': instance.to_date?.toIso8601String(),
    };
