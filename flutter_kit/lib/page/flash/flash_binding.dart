import 'package:get/get.dart';

import 'flash_logic.dart';

class FlashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FlashLogic());
  }
}
