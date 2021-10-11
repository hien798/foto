import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/data.dart';
import '../../models/model.dart';
import 'bloc.dart';

class AppCubit extends Cubit<AppState> {
  final UserRepository repo;

  AppCubit(this.repo) : super(AppState()) {
    onLoadSetting();
  }

  void onLoadSetting() async {
    final model = await repo.loadSetting();
    emit(AppState(model: model));
  }

  onChanged({AppSettingModel? model}) {
    if (model != null) repo.updateSetting(model);
    emit(AppState(model: model));
  }
}
