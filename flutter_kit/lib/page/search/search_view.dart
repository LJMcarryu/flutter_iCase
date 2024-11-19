import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'search_logic.dart';
import 'search_state.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final SearchLogic logic = Get.find<SearchLogic>();
    final SearchState state = Get.find<SearchLogic>().state;

    return Scaffold(
        appBar: AppBar(
          title: Text(
            "首页",
            style: TextStyle(fontSize: 18.sp, color: Colors.black87),
          ),
        ),
        body: const Center(child: Text('Search')));
  }
}
