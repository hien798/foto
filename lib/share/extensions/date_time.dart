import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String toDate(format) {
    //  date time from BE  = utc
    try {
      Duration timeZoneOffset = DateTime.now().timeZoneOffset;
      return DateFormat(format).format(this.add(timeZoneOffset));
    } catch (e) {
      return '-';
    }
  }

  DateTime timeNow() {
    Duration timeZoneOffset = DateTime.now().timeZoneOffset;
    return this.add(timeZoneOffset);
  }

  DateTime toTimeZone(int zone) {
    final utc = this.toUtc();
    return DateTime(
      utc.year,
      utc.month,
      utc.day,
      utc.hour + zone,
      utc.minute,
      utc.second,
      utc.millisecond,
      utc.microsecond,
    );
  }

  int get monthDays {
    return DateTime(this.year, this.month + 1, 0).day;
  }

  int get quarterDays {
    final rs = [1, 2, 3].fold<int>(
        0,
        (previousValue, element) =>
            previousValue + DateTime(this.year, this.month + element, 0).day);
    return rs;
  }

  int get yearDays {
    final rs = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12].fold<int>(
        0,
        (previousValue, element) =>
            previousValue + DateTime(this.year, this.month + element, 0).day);
    return rs;
  }
}
