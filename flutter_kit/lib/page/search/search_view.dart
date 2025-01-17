import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:flutter_kit/controller/manager.dart';
import 'package:flutter_kit/util/log_util.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'search_logic.dart';
import 'search_state.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final SearchLogic logic = Get.find<SearchLogic>();
    final SearchState state = Get.find<SearchLogic>().state;

    return Scaffold(
        appBar: AppBar(
          title: Text(
            "搜索",
            style: TextStyle(fontSize: 18.sp, color: Colors.black87),
          ),
        ),
        body: Column(
          children: [
            InkWell(
              onTap: () async {
                await BleManager.logic.getSystemInfo((string) {
                });
              },
              child: Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 15.sp),
                height: 40.sp,
                child: Text(
                  "获取系统信息",
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: const Color(0xFF242F57),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () async {
                await BleManager.logic.getFileList((string) {
                });
              },
              child: Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 15.sp),
                height: 40.sp,
                child: Text(
                  "获取录音列表",
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: const Color(0xFF242F57),
                  ),
                ),
              ),
            ),
            Obx(() => Expanded(
                    child: ListView.builder(
                  itemCount: BleManager.state.scanList.length,
                  itemBuilder: (context, index) {
                    ScanResult result = BleManager.state.scanList[index];
                    return InkWell(
                      onTap: () {
                        BleManager.logic.connect(result.device);
                      },
                      child: Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 15.sp),
                        height: 40.sp,
                        child: Text(
                          result.advertisementData.advName,
                          style: TextStyle(
                            fontSize: 18.sp,
                            color: const Color(0xFF242F57),
                          ),
                        ),
                      ),
                    );
                  },
                )))
          ],
        ));
  }
}
