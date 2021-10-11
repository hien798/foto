import 'package:dio/dio.dart';
import '../../share/share.dart';
import '../data.dart';

Environment env = Environment.dev;

class AppApi {
  static String basePath = env != Environment.dev
      ? 'https://api.superlucky.io/api/'
      : 'https://beta.api.superlucky.io/api/';

  Dio _dio = Dio();

  Dio get dio => _dio;
  final Duration timeout;
  final UserLocalStorage userLocalStorage;

  AppApi({
    List<Interceptor> interceptors = const [],
    this.timeout = const Duration(seconds: 30),
    required this.userLocalStorage,
  }) {
    _dio.options.baseUrl = basePath;
    if (interceptors.isNotEmpty) {
      _dio.interceptors.addAll(interceptors);
    }
    _dio.options.baseUrl = basePath;
    _dio.options.connectTimeout = timeout.inMilliseconds;
  }

  UserRestClient getUserApiClient({Dio? dio}) {
    dio ??= _dio;
    return UserRestClient(dio);
  }
}
