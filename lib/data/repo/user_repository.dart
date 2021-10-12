import 'dart:convert';
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

  Future<List<EditorModel>?> loadProjects() async {
    final json = await userStorage.loadProjects();
    if (json.isNullOrEmpty) return null;
    final data = jsonDecode(json!)
        .cast<Map<String, dynamic>>()
        .map<EditorModel>((js) => EditorModel.fromJson(js))
        .toList();
    return data;
  }

  void saveProject(List<EditorModel> projects) async {
    final json = jsonEncode(projects);
    userStorage.saveProject(json);
  }
}
