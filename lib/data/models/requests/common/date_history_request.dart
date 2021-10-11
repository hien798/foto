import 'package:freezed_annotation/freezed_annotation.dart';

part 'date_history_request.freezed.dart';

part 'date_history_request.g.dart';

@freezed
class DateHistoryRequest with _$DateHistoryRequest {

  const factory DateHistoryRequest({
    DateTime? from_date,
    DateTime? to_date,
  }) = _DateHistoryRequest;

  factory DateHistoryRequest.fromJson(Map<String, dynamic> json) =>
      _$DateHistoryRequestFromJson(json);
}
