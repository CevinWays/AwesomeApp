import 'dart:io';

import 'package:dio/dio.dart';

class DioHelper {
  static Dio dio;

  static void initDio(String baseUrl) {
    dio = Dio(BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: 20000,
        receiveTimeout: 50000,
        contentType: "application/json",
        responseType: ResponseType.json));
  }

  static void setDioHeader(String token) {
    dio.options.headers = {HttpHeaders.authorizationHeader: "Bearer $token"};
  }

  static void setDioInterceptor(String baseUrl) {
    dio.interceptors.add(InterceptorsWrapper(onRequest: (RequestOptions options) async {
      if (options.data is FormData) {
        print('data: ${(options.data as FormData).fields.toString()}');
      } else
        print('data: ${options.data.toString()}');
      return options;
    }, onError: (DioError e) async {
      if (e.response == null) {
        return e;
      }
      if (e.response.statusCode != null) {
        if (e.response.statusCode == 401) {

        }
      }
      return e;
    }));
  }

}