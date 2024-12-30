import 'dart:convert';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_kit/config/route_config.dart';
import 'package:flutter_kit/controller/manager.dart';
import 'package:flutter_kit/util/log_util.dart';
import 'package:get/get.dart';

import '../../config/constant_config.dart';
import '../../database/shared_preferences.dart';
import '../../model/user_info.dart';
import '../../network/api/user_api.dart';
import 'login_state.dart';

class LoginLogic extends GetxController {
  final LoginState state = LoginState();

  login() async {
    EasyLoading.show();
    UserInfo? userInfo =
        await userLogin('jmliu6@iflytek.com', 'iFlytek.iCase.');
    EasyLoading.dismiss();
    if (userInfo == null) {
      Log.e("当前登录的用户userInfo为null");
      return;
    }
    if (userInfo.token == null) {
      Log.e("当前登录的用户token为null");
      return;
    }
    SPStorage.set(ConstantConfig.userInfo, jsonEncode(userInfo));
    SPStorage.set(ConstantConfig.token, userInfo.token);
    UserManager.state.userInfo = userInfo;
    UserManager.state.token = userInfo.token;
    Get.offNamed(RouteConfig.tab);
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
