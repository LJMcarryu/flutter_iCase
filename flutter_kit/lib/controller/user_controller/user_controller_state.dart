import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class UserControllerState {

  RxInt userName = RxInt(0);

  UserControllerState() {
    userName = 0.obs;
  }
}