import 'package:dio/dio.dart';

import 'endpoint.dart';

class DioInterceptor extends QueuedInterceptor {
  final Dio dio;

  DioInterceptor(this.dio);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['Accept'] = "application/json";
    options.headers['ContentType'] = "application/json";
    options.headers['contentType'] = "application/json";
    options.baseUrl = Endpoints.baseUrl;
    super.onRequest(options, handler);
  }
}
