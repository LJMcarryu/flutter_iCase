import 'package:shared_preferences/shared_preferences.dart';

/// 封装 SharedPreferences
class SPStorage {
  // 单例
  factory SPStorage() => _instance;
  SPStorage._internal();
  static final SPStorage _instance = SPStorage._internal();
  // 保持一个sp的引用
  static late final SharedPreferences _sp;

  /// 初始化方法，只调用一次
  static Future<SPStorage> getInstance() async {
    _sp = await SharedPreferences.getInstance();
    return _instance;
  }

  /// 写入数据
  static void set<T>(String key, T value) {
    String type = value.runtimeType.toString();
    switch (type) {
      case 'String':
        _sp.setString(key, value as String);
        break;
      case 'int':
        _sp.setInt(key, value as int);
        break;
      case 'bool':
        _sp.setBool(key, value as bool);
        break;
      case 'double':
        _sp.setDouble(key, value as double);
        break;
      case 'List<String>':
        _sp.setStringList(key, value as List<String>);
        break;
    }
  }

  /// 根据 key 读取数据
  static String? getString<T>(String key) {
    return _sp.getString(key);
  }

  /// 根据 key 读取数据
  static int? getInt<T>(String key) {
    return _sp.getInt(key);
  }

  /// 根据 key 读取数据
  static bool? getBool<T>(String key) {
    return _sp.getBool(key);
  }

  /// 根据 key 读取数据
  static double? getDouble<T>(String key) {
    return _sp.getDouble(key);
  }

  /// 根据 key 读取数据
  static List<String>? getStringList<T>(String key) {
    return _sp.getStringList(key);
  }

  /// -------------其他方法封装-----------------
  /// 获取所有的 key
  static Set<String> getKeys() {
    return _sp.getKeys();
  }

  /// 判断数据中是否包含某个 key
  static bool containsKey(String key) {
    return _sp.containsKey(key);
  }

  /// 删除数据中某个 key
  static Future<bool> remove(String key) async {
    return await _sp.remove(key);
  }

  /// 清空所有数据
  static Future<bool> clear() async {
    return await _sp.clear();
  }

  /// 重新加载
  static Future<void> reload() async {
    return await _sp.reload();
  }
}
