import 'dart:convert';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_kit/config/route_config.dart';
import 'package:flutter_kit/controller/manager.dart';
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
    UserInfo userInfo = await userLogin('jmliu6@iflytek.com', 'iFlytek.iCase.');
    if (userInfo.token != null) {
      SPStorage.set(ConstantConfig.userInfo, jsonEncode(userInfo));
      SPStorage.set(ConstantConfig.token, userInfo.token);
      UserManager.logic.setUserInfo(userInfo);
      Get.offNamed(RouteConfig.tab);
    }
    EasyLoading.dismiss();
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
