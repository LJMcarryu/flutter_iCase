
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../page/home/home_binding.dart';
import '../page/mine/mine_binding.dart';
import '../page/search/search_binding.dart';
import '../page/search/search_view.dart';
import '../page/tab/tab_binding.dart';
import '../page/tab/tab_view.dart';



class RouteConfig {
  static const String tab = "/tab";
  // static const String home = "/home";
  // static const String mine = "/mine";
  static const String search = "/search";

  static final List<GetPage> getPages = [
    GetPage(
      name: tab,
      page: () => const TabPage(),
      bindings: [TabBinding(), HomeBinding(), MineBinding()],
    ),
    GetPage(
      name: search,
      page: () => const SearchPage(),
      binding: SearchBinding(),
    ),
  ];
}
