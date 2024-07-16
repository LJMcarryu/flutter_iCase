import 'package:get/get.dart';

import 'user_controller_state.dart';

class UserControllerLogic extends GetxController {
  final UserControllerState state = UserControllerState();

  setUserName(String userName) {
    state.userName.value = 1;
  }
}
