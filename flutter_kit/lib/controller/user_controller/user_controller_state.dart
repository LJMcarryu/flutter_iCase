import 'dart:convert';

import 'package:flutter_kit/util/log_util.dart';

import '../../config/constant_config.dart';
import '../../database/shared_preferences.dart';
import '../../model/user_info.dart';

class UserControllerState {
  /// 当前登录用户信息
  UserInfo userInfo = const UserInfo();

  UserControllerState() {
    final token = SPStorage.getString(ConstantConfig.token);
    if (token != null) {
      userInfo = UserInfo.fromJson(jsonDecode(SPStorage.getString(ConstantConfig.userInfo)!));
    }
  }
}
