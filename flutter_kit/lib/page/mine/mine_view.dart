import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'mine_logic.dart';

class MinePage extends StatelessWidget {
  const MinePage({super.key});

  @override
  Widget build(BuildContext context) {
    final logic = Get.find<MineLogic>();
    final state = Get.find<MineLogic>().state;

    return const Scaffold(
        body:Center(child:Text('Mine')));
  }
}
