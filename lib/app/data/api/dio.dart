import 'package:dio/dio.dart';

Dio dio(String baseURL) {
  return Dio(
    BaseOptions(
      baseUrl: baseURL,
      connectTimeout: Duration(seconds: 10),
      receiveTimeout: Duration(seconds: 10),
    ),
  );
}
