import 'package:get/get.dart';

class TabState {
  RxInt index = RxInt(0);

  TabState() {
    index = 0.obs;
  }
}
