import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../../models/model.dart';

class UserLocalStorage {
  final _storage = FlutterSecureStorage();

  load() async {
    await loadSetting();
  }

  loadSetting() async {
    String? locale = (await _storage.read(key: 'setting/locale')) ?? 'en_US';
    String? theme = (await _storage.read(key: 'setting/theme')) ?? 'dark';
    String? font = (await _storage.read(key: 'setting/font')) ?? 'Gilroy';
    _settingModel = AppSettingModel(
      locale: locale,
      theme: theme,
      font: font,
    );
  }

  updateSetting(AppSettingModel model) {
    _settingModel = model;
    _scheduleSave('setting/locale', model.locale ?? 'en_US');
    _scheduleSave('setting/theme', model.theme ?? 'dark');
    _scheduleSave('setting/font', model.font ?? 'Gilroy');
  }

  AppSettingModel get settingModel => _settingModel;
  late AppSettingModel _settingModel;

  void _scheduleSave(String key, String value) {
    _storage.write(key: key, value: value);
  }
}
