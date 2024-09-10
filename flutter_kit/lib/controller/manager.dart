import 'package:flutter_kit/controller/user_controller/user_controller_state.dart';
import 'package:get/get.dart';
import 'user_controller/user_controller_logic.dart';

/// 全局变量管理类
class UserManager {
  static final UserControllerLogic logic = Get.find<UserControllerLogic>();
  static final UserControllerState state = Get.find<UserControllerLogic>().state;

  // static UserControllerLogic logic() {
  //   return Get.find<UserControllerLogic>();
  // }

  // static UserControllerState state() {
  //   return Get.find<UserControllerLogic>().state;
  // }
}
