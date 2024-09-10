import 'dart:convert';


import '../../config/constant_config.dart';
import '../../database/shared_preferences.dart';
import '../../model/user_info.dart';

class UserControllerState {
  /// 登录鉴权
  String? token;
  /// 当前登录用户信息
  UserInfo userInfo = const UserInfo();

  UserControllerState() {
    final tokenString = SPStorage.getString(ConstantConfig.token);
    if (tokenString != null) {
      token = tokenString;
      final userInfoJsonString = SPStorage.getString(ConstantConfig.userInfo);
      if (userInfoJsonString != null) {
        userInfo = UserInfo.fromJson(jsonDecode(userInfoJsonString));
      }
    }
  }
}
