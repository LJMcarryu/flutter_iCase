import 'dart:convert';
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

    /// map 不能直接判断 Type 类型，他是一个 _InternalLinkedHashMap 是一个私有类型，没有办法引用出来
    if (value is Map) {
      // map 转成 json 格式的字符串进行保存，序列化成 json 字符串
      _sp.setString(key, json.encode(value));
      return;
    }
  }

  /// 根据 key 读取数据
  static Object? get<T>(String key) {
    var value = _sp.get(key);
    if (value is String) {
      try {
        // 反序列化，处理map，原样返回map回去。
        return const JsonDecoder().convert(value) as Map<String, dynamic>;
      } on FormatException catch (_) {
        return value; // 返回字符串
      }
    }
    return value;
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
