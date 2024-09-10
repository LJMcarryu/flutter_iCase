import 'package:dio/dio.dart';
import 'package:flutter_kit/controller/manager.dart';
import 'package:get/get.dart';

class TokenInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    super.onRequest(options, handler);
    if (UserManager.state.token != null) {
      options.headers["token"] = UserManager.state.token;
    }

    /// 获取设备当前区域设置
    String? languageCode = Get.deviceLocale?.languageCode;
    if (languageCode == "en") {
      options.headers["Accept-Language"] = "en-US";
    } else {
      options.headers["Accept-Language"] = "zh-CN";
    }
  }
}
