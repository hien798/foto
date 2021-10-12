import 'data/data.dart';
import 'bloc/bloc.dart';

class App {
  AppCubit get appCubit => _appCubit;
  late AppCubit _appCubit;

  ProjectCubit get projectCubit => _projectCubit;
  late ProjectCubit _projectCubit;

  UserRepository get userRepository => _userRepository;
  late UserRepository _userRepository;

  late AppApi _api;

  Future<void> setup() async {
    await _setupRepo();
    await _setupBlocs();
  }

  Future<void> _setupRepo() async {
    final userStorage = UserLocalStorage();
    await userStorage.load();
    await StorageManager().init();
    _api = AppApi(userLocalStorage: userStorage, interceptors: [
      // AuthInterceptor(userLocalStorage: userStorage),
      LogInterceptor(),
    ]);
    _userRepository = UserRepository(
      api: _api,
      userApi: _api.getUserApiClient(),
      userStorage: userStorage,
    );
  }

  Future<void> _setupBlocs() async {
    _appCubit = AppCubit(_userRepository);
    _projectCubit = ProjectCubit(_userRepository);
  }
}
