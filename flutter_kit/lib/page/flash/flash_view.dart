import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'flash_logic.dart';
import 'flash_state.dart';

class FlashPage extends StatelessWidget {
  const FlashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FlashLogic logic = Get.find<FlashLogic>();
    final FlashState state = Get.find<FlashLogic>().state;

    return Container();
  }
}
