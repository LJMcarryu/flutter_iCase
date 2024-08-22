import 'dart:convert';

import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../config/constant_config.dart';
import '../../database/shared_preferences.dart';
import '../../model/user_info.dart';

class UserControllerState {
  /// 当前登录用户信息
  UserInfo userInfo = const UserInfo();

  RxInt status = RxInt(0);

  UserControllerState() {
    final token = SPStorage.getString(ConstantConfig.token);
    if (token != null) {
      userInfo = UserInfo.fromJson(jsonDecode(SPStorage.getString(ConstantConfig.userInfo)!));
    }

    status = 0.obs;
  }
}
