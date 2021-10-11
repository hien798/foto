import 'dart:io';
import '../../../share/share.dart';
import '../../models/model.dart';
import '../data.dart';

class UserRepository {
  final AppApi api;
  final UserRestClient userApi;
  final UserLocalStorage userStorage;

  UserRepository({
    required this.api,
    required this.userApi,
    required this.userStorage,
  });

  Future<AppSettingModel> loadSetting() async {
    return userStorage.settingModel;
  }

  Future updateSetting(AppSettingModel model) async {
    userStorage.updateSetting(model);
  }
}
