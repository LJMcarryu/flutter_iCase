import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_logic.dart';
import 'login_state.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LoginLogic logic = Get.find<LoginLogic>();
    final LoginState state = Get.find<LoginLogic>().state;

    return Container();
  }
}
