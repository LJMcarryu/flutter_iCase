import 'package:get/get.dart';

import '../../model/user_info.dart';
import 'user_controller_state.dart';

class UserControllerLogic extends GetxController {
  final UserControllerState state = UserControllerState();

  setUserInfo (UserInfo userInfo) {
    state.userInfo = userInfo;
  }

  addStatus() {
    state.status.value++;
  }
}
