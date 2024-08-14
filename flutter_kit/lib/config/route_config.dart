
import 'package:flutter_kit/page/flash/flash_binding.dart';
import 'package:flutter_kit/page/flash/flash_view.dart';
import 'package:flutter_kit/page/login/login_binding.dart';
import 'package:flutter_kit/page/login/login_view.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../page/home/home_binding.dart';
import '../page/mine/mine_binding.dart';
import '../page/search/search_binding.dart';
import '../page/search/search_view.dart';
import '../page/tab/tab_binding.dart';
import '../page/tab/tab_view.dart';

class RouteConfig {
  static const String flash = "/flash";
  static const String login = "/login";
  static const String tab = "/tab";
  // static const String home = "/home";
  // static const String mine = "/mine";
  static const String search = "/search";

  static final List<GetPage> getPages = [
    GetPage(
      name: flash,
      page: () => const FlashPage(),
      binding: FlashBinding(),
    ),
    GetPage(
      name: login,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: tab,
      page: () => const TabPage(),
      bindings: [HomeBinding(), MineBinding(), TabBinding()],
    ),
    GetPage(
      name: search,
      page: () => const SearchPage(),
      binding: SearchBinding(),
    ),
  ];
}
