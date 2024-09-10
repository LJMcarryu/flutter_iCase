
import 'package:flutter_kit/config/constant_config.dart';
import 'package:flutter_kit/config/route_config.dart';
import 'package:flutter_kit/controller/manager.dart';
import 'package:flutter_kit/database/shared_preferences.dart';
import 'package:flutter_kit/util/log_util.dart';
import 'package:get/get.dart';

import 'flash_state.dart';

class FlashLogic extends GetxController {
  final FlashState state = FlashState();

  goLoginOrHome() {
    Log.d("当前登录用户的token：${UserManager.state.token}");
    if (UserManager.state.token == null) {
      Get.offNamed(RouteConfig.login);
    } else {
      Get.offNamed(RouteConfig.tab);
    }
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
