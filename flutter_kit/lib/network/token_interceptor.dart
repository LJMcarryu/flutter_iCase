import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_kit/config/constant_config.dart';
import 'package:flutter_kit/database/shared_preferences.dart';
import 'package:get/get.dart';

class TokenInterceptor extends InterceptorsWrapper {
  String? _token;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    super.onRequest(options, handler);
    _token = SPStorage.getString(ConstantConfig.token);
    if (_token != null) {
      options.headers["token"] = _token;
    }

    // 获取设备当前区域设置
    Locale? locale = Get.deviceLocale;
    String? languageCode = locale?.languageCode;
    if (languageCode == "en") {
      options.headers["Accept-Language"] = "en-US";
    } else {
      options.headers["Accept-Language"] = "zh-CN";
    }
  }
}
