import 'package:get/get_navigation/src/root/internacionalization.dart';

import 'language.dart';

class Messages extends Translations {

  @override
  Map<String, Map<String, String>> get keys => {
    'zh_CN': {
      Language.home: '首页',
      Language.mine: '我的',
    },
    'en_US': {
      Language.home: 'Home',
      Language.mine: 'Mine',
    },
  };
}