import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../language/language.dart';
import '../home/home_view.dart';
import '../mine/mine_view.dart';
import 'tab_logic.dart';

class TabPage extends StatelessWidget {
  const TabPage({super.key});

  @override
  Widget build(BuildContext context) {
    final logic = Get.find<TabLogic>();
    final state = Get.find<TabLogic>().state;
    final List<Widget> pageList = [const HomePage(), const MinePage()];
    return Scaffold(
      body: Obx(() => IndexedStack(
            index: state.index.value,
            children: pageList,
          )),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          /// 取消点击高亮与波纹
          type: BottomNavigationBarType.fixed,
          currentIndex: state.index.value,
          onTap: (value) {
            logic.changeIndex(value);
          },
          items: [
            BottomNavigationBarItem(icon: const Icon(Icons.dashboard), label: Language.home.tr),
            BottomNavigationBarItem(
                icon: const Icon(Icons.account_box_rounded), label: Language.mine.tr),
          ],
        ),
      ),
    );
  }
}
