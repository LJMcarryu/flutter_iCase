import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'login_logic.dart';
import 'login_state.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginLogic logic = Get.find<LoginLogic>();
    final LoginState state = Get.find<LoginLogic>().state;

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            _buildLoginView(logic, state),
          ],
        ),
      ),
    );
  }

  Widget _buildLoginView(LoginLogic logic, LoginState state) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 0.5.sh, left: 60.sp, right: 60.sp),
      height: 40.sp,
      child: ElevatedButton(
        onPressed: () {
          logic.login();
        },
        /// TODO: 这个方式太复杂，尝试用 InWell
        style: ButtonStyle(
          textStyle: WidgetStateProperty.all(TextStyle(fontSize: 18.sp)),
          backgroundColor: WidgetStateProperty.all(Colors.blue),
          foregroundColor: WidgetStateProperty.all(Colors.white),
          elevation: WidgetStateProperty.all(1.sp),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.sp))),
        ),
        child: Text('登 录', style: TextStyle(fontSize: 20.sp)),
      ),
    );
  }
}
