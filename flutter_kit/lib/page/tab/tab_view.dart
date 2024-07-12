import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
          currentIndex: state.index.value,
          onTap: (value) {
            logic.changeIndex(value);
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box_rounded), label: 'Mine'),
          ],
        ),
      ),
    );
  }
}
