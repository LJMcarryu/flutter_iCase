import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_kit/config/route_config.dart';
import 'package:flutter_kit/controller/user_controller/user_controller_logic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'home_logic.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final logic = Get.find<HomeLogic>();
    final state = Get.find<HomeLogic>().state;

    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 100.sp),
        child: InkWell(
          onTap: () {
            Get.toNamed(RouteConfig.search);
          },
          child: Text(Get.find<UserControllerLogic>().state.userInfo.nickName ?? ""),
        ),
      ),
    );
  }
}
