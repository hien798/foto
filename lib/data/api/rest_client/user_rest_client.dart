import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../data.dart';

part 'user_rest_client.g.dart';

@RestApi()
abstract class UserRestClient {
  factory UserRestClient(Dio dio, {String baseUrl}) = _UserRestClient;

  @POST('auth/login')
  Future<BaseResponse> login();
}
