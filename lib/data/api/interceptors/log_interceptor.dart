import 'dart:convert';
import 'package:dio/dio.dart';

class LogInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print('REQUEST[${options.method}] => PATH: ${options.path}');
    print("""
      Method: ${options.method}
    Headers: ${options.headers.values}
    Data: ${options.data})}
        """);
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print("""RESPONSE:
    URL: ${response.requestOptions.uri}
    Method: ${response.requestOptions.method}
    Headers: ${json.encode(response.requestOptions.headers)}
    Data: ${json.encode(response.data)}
        """);
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    if (err.response == null) {
      // showMessageSnackBar('Cannot connect to server');
    }
    if (err.response?.statusCode == 400) {
      // showMessageSnackBar('The specified URL cannot be found');
    }
    if (err.response?.statusCode == 401) {
      // showMessageSnackBar('UnAuthenticated');
    }
    super.onError(err, handler);
  }
}
