import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:flutter_kit/util/log_util.dart';

import '../network.dart';

/// 用户登录
Future<WebRespBody?> userLogin(String username, String password) async {
  try {
    var digest = md5.convert(const Utf8Encoder().convert(password));
    // 参数
    var query = {
      "username": username,
      "password": digest.toString(),
      "userType": 1
    };
    Log.d(query);
    var response =
        await Network.apiDio.post("/icase/api/user/login", data: query);
    var data = WebRespBody(response.data);
    return data;
  } catch (e) {
    return null;
  }
}
