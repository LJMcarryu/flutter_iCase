import 'package:dio/dio.dart';
import 'package:flutter_kit/config/constant_config.dart';
import 'package:flutter_kit/network/token_interceptor.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';

class Network {
  static Dio get apiDio {
    BaseOptions options = BaseOptions(
        baseUrl: ConstantConfig.baseUrlProduct,
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 15),
        sendTimeout: const Duration(seconds: 10),
        contentType: Headers.jsonContentType);

    final Dio dio = Dio(options);
    dio.interceptors.add(TokenInterceptor());
    dio.interceptors.add(TalkerDioLogger());
    return dio;
  }
}

class WebRespBody<T> {
  late Map<String, dynamic> _rawData;
  int get status => _rawData['status'];
  String get msg => _rawData['msg'];
  late T body;
  WebRespBody(dynamic data) {
    _rawData = data;
    body = data['body'];
  }
}
