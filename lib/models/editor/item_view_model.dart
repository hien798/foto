import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_view_model.freezed.dart';

part 'item_view_model.g.dart';

// enum ItemViewType { sticker, text, image }

@freezed
class ItemViewModel with _$ItemViewModel {
  const factory ItemViewModel({
    String? key,
    required int type,
    required String value,
    required double scale,
    required double dx,
    required double dy,
  }) = _ItemViewModel;

  factory ItemViewModel.fromJson(Map<String, dynamic> json) =>
      _$ItemViewModelFromJson(json);
}