import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_request.freezed.dart';

part 'page_request.g.dart';

@freezed
class PageRequest with _$PageRequest {

  const factory PageRequest({
    int? page,
    int? pageSize,
  }) = _PageRequest;

  factory PageRequest.fromJson(Map<String, dynamic> json) =>
      _$PageRequestFromJson(json);
}
