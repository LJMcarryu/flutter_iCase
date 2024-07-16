import 'package:flutter_kit/controller/user_controller/user_controller_logic.dart';
import 'package:get/get.dart';


import '../../model/user_info.dart';
import '../../network/api/user_api.dart';
import '../../network/network.dart';
import 'search_state.dart';

class SearchLogic extends GetxController {
  final SearchState state = SearchState();

  @override
  Future<void> onReady() async {
    // TODO: implement onReady
    super.onReady();
    WebRespBody? responseBody = await userLogin('jmliu6@iflytek.com', 'Ljm0917..');
    UserInfo userInfo = UserInfo.fromJson(responseBody?.body);
    Get.find<UserControllerLogic>().setUserName(userInfo.nickName!);
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
