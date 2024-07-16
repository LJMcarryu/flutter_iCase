import 'package:get/get.dart';

import 'user_controller_logic.dart';

class UserControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserControllerLogic());
  }
}
