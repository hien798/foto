import 'package:dio/dio.dart';

extension ErrorParser on DioError {
  List<String>? toMessages() {
    try {
      if (this.response?.data != null) {
        final msg = this.response?.data['message'];
        final errors = this.response?.data['errors'] as List<dynamic>?;
        if (errors != null && errors.isNotEmpty) {
          return List<String>.from(errors);
        }
        return msg != null ? [msg.toString()] : null;
      }
    } catch (e) {
      print(e);
    }
  }

  String? toMessage() {
    try {
      if (this.response?.data != null) {
        final msg = this.response?.data['message'];
        final errors = this.response?.data['errors'] as List<dynamic>?;
        if (errors != null && errors.isEmpty) return msg?.toString() ?? null;
        final _errors = List<String>.from(errors!);
        final mes = _errors.fold<String>(
            '', (previousValue, element) => previousValue + '\n' + element);
        return mes;
      }
    } catch (e) {
      print(e);
    }
  }

  int? get errorCode {
    try {
      return this.response?.data['error_code'];
    } catch (e) {
      return -1;
    }
  }
}
