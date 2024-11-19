import 'package:flutter/material.dart';
import 'package:flutter_kit/controller/manager.dart';
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
      appBar: AppBar(
        title: Text(
          "首页",
          style: TextStyle(fontSize: 18.sp,color: Colors.black87),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 100.sp),
        child: InkWell(
          onTap: () {
            logic.toSearchPage();
          },
          child: Text(
            UserManager.state.userInfo.nickName ?? "",
            style: Get.theme.textTheme.titleMedium,
          ),
        ),
      ),
    );
  }
}
