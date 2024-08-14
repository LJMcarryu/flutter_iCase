import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'flash_logic.dart';
import 'flash_state.dart';

class FlashPage extends StatelessWidget {
  const FlashPage({super.key});

  static const colorizeColors = [
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
  ];

  static const colorizeTextStyle = TextStyle(
    fontSize: 30.0,
    fontFamily: 'Horizon',
  );

  @override
  Widget build(BuildContext context) {
    final FlashLogic logic = Get.find<FlashLogic>();
    final FlashState state = Get.find<FlashLogic>().state;

    return Scaffold(body: Center(
      child: SizedBox(
        width: 300,
        child: AnimatedTextKit(
          animatedTexts: [
            ColorizeAnimatedText(
              '智慧工牌 · 智享世界',
              textStyle: colorizeTextStyle,
              colors: colorizeColors,
            )
          ],
          isRepeatingAnimation: false,
          onFinished: () {
            logic.goLoginOrHome();
          },
          pause: const Duration(milliseconds: 0),
        ),
      )));
  }
}
