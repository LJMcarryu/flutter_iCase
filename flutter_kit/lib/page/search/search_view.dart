import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'search_logic.dart';
import 'search_state.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SearchLogic logic = Get.find<SearchLogic>();
    final SearchState state = Get.find<SearchLogic>().state;

    return Container();
  }
}
