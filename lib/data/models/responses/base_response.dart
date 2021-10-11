import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response.freezed.dart';
part 'base_response.g.dart';

@freezed
class BaseResponse with _$BaseResponse {
  const factory BaseResponse({
    String? status,
    String? message,
  }) = _BaseResponse;

  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);
}
