import 'package:get/get.dart';


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
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
