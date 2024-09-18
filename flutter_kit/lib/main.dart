import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_kit/config/theme_config.dart';
import 'package:flutter_kit/controller/user_controller/user_controller_logic.dart';
import 'package:flutter_kit/database/shared_preferences.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/router_report.dart';

import 'config/route_config.dart';

void main() async {
  /// 持久化存储初始化
  WidgetsFlutterBinding.ensureInitialized();
  await SPStorage.getInstance();
  /// TODO：初始化全局变量管理类（后续可以放到Config统一初始化）
  Get.put(UserControllerLogic());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /// flutter_screenutil 库 init
    return ScreenUtilInit(
      /// 设计稿中设备的尺寸(单位随意,建议dp,但在使用过程中必须保持一致)
      designSize: const Size(412, 915),
      /// 是否根据宽度/高度中的最小值适配文字
      minTextAdapt: true,
      /// 支持分屏尺寸
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          // title: 'flutter_kit',
          theme: appLightThemeData,
          darkTheme: appDarkThemeData,
          themeMode: Get.isDarkMode ? ThemeMode.dark: ThemeMode.light,
          initialRoute: RouteConfig.flash,
          getPages: RouteConfig.getPages,
          /// 此处是处理不使用 GetX 路由，也能很轻松回收各个页面的 GetXController
          navigatorObservers: [GetXRouterObserver()],
          /// flutter_easyloading 初始化
          builder: EasyLoading.init(),
        );
      },
    );
  }
}

/// 手动让 GetX 感知路由
class GetXRouterObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    RouterReportManager.reportCurrentRoute(route);
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) async {
    RouterReportManager.reportRouteDispose(route);
  }
}
