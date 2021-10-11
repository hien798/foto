class LocaleCodes {
  LocaleCodes._();

  static const vi = 'vi';
  static const en = 'en';
}

enum Environment { dev, stg, pro }

extension EnvirentmentEx on Environment {
  static const _names = ['Develop', 'Staging', 'Production'];
  String get name => _names[index];
}

class Constants {
  Constants._();

  static DateTime get kReleaseTime => DateTime.utc(2021, 10, 10, 16);

  static DateTime get kReleasePhaseEndTime =>
      DateTime.utc(2021, 10, 10, 23, 59, 59);
}
