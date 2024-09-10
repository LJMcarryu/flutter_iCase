import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:flutter_kit/config/constant_config.dart';
import 'package:flutter_kit/model/user_info.dart';

import '../network.dart';

/// 用户登录
Future<UserInfo> userLogin(String username, String password) async {
  try {
    var digest = md5.convert(const Utf8Encoder().convert(password));
    var query = {
      "username": username,
      "password": digest.toString(),
      "userType": 1
    };
    var response =
        await Network.apiDio.post(ConstantConfig.userLogin, data: query);
    var data = UserInfo.fromJson(WebRespBody(response.data).body);
    return data;
  } catch (e) {
    /// TODO: 出错处理
    return const UserInfo();
  }
}

/// 用户登出
Future<bool> userLogout() async {
  try {
    var response = await Network.apiDio.get(ConstantConfig.userLogout);
    var data = WebRespBody(response.data);
    return data.status == 200;
  } catch (e) {
    return false;
  }
}
