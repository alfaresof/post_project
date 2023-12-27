import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'dio_interceptor.dart';

class DioClient {
  final _dio = Dio();

  DioClient() {
    _dio.interceptors.add(DioInterceptor(dio));

    if (kDebugMode) {
      _dio.interceptors.add(PrettyDioLogger());
    }
  }

  Dio get dio => _dio;
}
