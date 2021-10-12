import 'package:foto/models/editor/editor.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../models/model.dart';

part 'editor_state.freezed.dart';

@freezed
class EditorState with _$EditorState {
  const factory EditorState() = _EditorState;
  const factory EditorState.imageLoaded(String image, {double? ratio}) = ImageLoaded;
  const factory EditorState.filterLoaded(String? filter) = FilterLoaded;
  const factory EditorState.itemsLoaded(List<ItemViewModel>? items) = ItemsLoaded;
}
