import 'package:get/get.dart';

import 'ble_controller_logic.dart';

class BleControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BleControllerLogic());
  }
}
