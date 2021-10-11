import 'package:intl/intl.dart';

extension StringEx on String? {
  bool get isNullOrEmpty {
    return this == null || this!.isEmpty;
  }

  String toCurrency() {
    try {
      final numFormat = new NumberFormat("#,##0.00", "en_US");
      num value = num.parse(this.toString());
      return numFormat.format(value);
    } catch (e) {
      return this.toString();
    }
  }
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }

  String toHexAddress() {
    if (this.length <= 2) return this;
    String address = this.substring(0, 2);
    for (int i = 2; i < this.length; i += 4) {
      final end = i + 4 > this.length ? this.length : i + 4;
      address = '$address ${this.substring(i, end)}';
    }
    return address;
  }

  String toShortHexAddress() {
    if (this.length <= 10) return this;
    return '${this.substring(0, 6)}...${this.substring(6, 10)}';
  }
}
