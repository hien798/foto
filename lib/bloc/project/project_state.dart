import 'package:freezed_annotation/freezed_annotation.dart';
import '../../models/model.dart';

part 'project_state.freezed.dart';

@freezed
class ProjectState with _$ProjectState {
  const factory ProjectState({List<EditorModel>? projects}) = _ProjectState;
  const factory ProjectState.loading({List<EditorModel>? projects}) = ProjectLoading;
  const factory ProjectState.loaded({List<EditorModel>? projects}) = ProjectLoaded;
  const factory ProjectState.saved({List<EditorModel>? projects}) = ProjectSaved;
}
