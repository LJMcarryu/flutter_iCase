import 'package:get/get.dart';

import 'tab_state.dart';

class TabLogic extends GetxController {
  final TabState state = TabState();

  changeIndex(int index) {
    state.index.value = index;
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}


