import 'dart:async';

import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../util/log_util.dart';

class BleControllerState {
  /// 蓝牙可用的状态
  RxBool adapterState = RxBool(false);
  /// 扫描到的设备列表
  final scanList = <ScanResult>[].obs;
  /// common notify获取到的数据
  final notifyData = <int>[].obs;
  /// 写入特征值
  BluetoothCharacteristic? writeCharacteristic;

  BleControllerState() {
    /// 设置日志输出级别
    FlutterBluePlus.setLogLevel(LogLevel.error, color: true);
    /// 检测蓝牙适配器开关状态
    FlutterBluePlus.adapterState.listen((BluetoothAdapterState state) {
      LJMLog.i("蓝牙适配器状态: $state");
      if (state == BluetoothAdapterState.on) {
        adapterState = true.obs;
      } else {
        adapterState = false.obs;
      }
    });
  }
}
