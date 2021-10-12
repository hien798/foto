import 'package:collection/src/iterable_extensions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/data.dart';
import '../../models/model.dart';
import 'bloc.dart';

class ProjectCubit extends Cubit<ProjectState> {
  final UserRepository repo;

  ProjectCubit(this.repo) : super(ProjectState()) {
    onLoadProjects();
  }

  void onLoadProjects() async {
    emit(ProjectLoading(projects: state.projects));
    final rs = await repo.loadProjects();
    emit(ProjectLoaded(projects: rs));
  }

  void onAddProject(EditorModel model) async {
    emit(ProjectLoading(projects: state.projects));
    final List<EditorModel> projects =
        List<EditorModel>.from(state.projects ?? []);
    projects.insert(0, model);
    repo.saveProject(projects);
    emit(ProjectLoaded(projects: projects));
  }

  void onSaveProject(EditorModel model) async {
    print('onSaving');
    emit(ProjectLoading(projects: state.projects));
    final List<EditorModel> projects =
        List<EditorModel>.from(state.projects ?? []);
    final _model = projects
        .firstWhereOrNull((element) => element.createTime == model.createTime);
    if (_model!= null) {
      projects.remove(_model);
      projects.insert(0, model);
      repo.saveProject(projects);
      print('Saved');
    }
    emit(ProjectLoaded(projects: projects));
  }

  void onDeleteProject(EditorModel model) async {
    emit(ProjectLoading(projects: state.projects));
    final List<EditorModel> projects =
    List<EditorModel>.from(state.projects ?? []);
    projects.remove(model);
    repo.saveProject(projects);
    emit(ProjectLoaded(projects: projects));
  }
}
