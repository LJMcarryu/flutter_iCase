import 'dart:async';
import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:flutter_kit/config/constant_config.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';

import '../../util/log_util.dart';
import 'ble_controller_state.dart';

/// 指令消息转发
class MessageSender {
  Function(String message)? systemInfoSent;
  Function(String message)? fileListSent;
  Function(String message)? configInfoSent;

  void sendMessage(String message) {
    int? opt = jsonDecode(message)["opt"];

    switch (opt) {
      case 82002:
        systemInfoSent?.call(message);
        break;
      case 82004:
        fileListSent?.call(message);
        break;
      case 82029:
        configInfoSent?.call(message);
        break;
    }
  }
}

class BleControllerLogic extends GetxController {
  final BleControllerState state = BleControllerState();

  MessageSender sender = MessageSender();

  /// 开始扫描
  startScan() async {
    // Directory appDocumentsDir = await getApplicationSupportDirectory();
    // var file = File("${appDocumentsDir.path}/fileName.sbc");
    // file.writeAsBytesSync([2], mode: FileMode.writeOnlyAppend);
    // file.writeAsBytesSync([3], mode: FileMode.writeOnlyAppend);
    // List<int> lines = file.readAsBytesSync();
    // LJMLog.d(lines);

    // 判断当前设备是否支持蓝牙
    bool able = await _able();
    if (!able) {
      LJMLog.e("当前设备不支持蓝牙");
      return;
    }

    // 判断当前蓝牙开启状态
    if (!state.adapterState.value) {
      if (Platform.isAndroid) {
        await FlutterBluePlus.turnOn();
      } else {
        // TODO:iOS上的蓝牙开启
        return;
      }
    }

    // 开始扫描
    await FlutterBluePlus.startScan(
        // 自定义关键词：智慧工牌
        withKeywords: [ConstantConfig.cardName],
        // 扫描时间：30s
        timeout: const Duration(seconds: 30),
        // 使用定位进行蓝牙搜索
        androidUsesFineLocation: true);
    // 监听扫描结果
    FlutterBluePlus.onScanResults.listen(
      (res) {
        state.scanList.value = res;
      },
      onError: (e) => LJMLog.e(e.toString()),
    );
  }

  /// 停止扫描
  stopScan() async {
    await FlutterBluePlus.stopScan();
  }

  /// 连接蓝牙设备
  connect(BluetoothDevice device) async {
    device.connectionState
        .listen((BluetoothConnectionState connectionState) async {
      if (connectionState == BluetoothConnectionState.disconnected) {
        LJMLog.i(
            "未连接：${device.disconnectReason?.code} ${device.disconnectReason?.description}");
        return;
      } else if (connectionState == BluetoothConnectionState.connected) {
        // 获取所有服务
        List<BluetoothService> services = await device.discoverServices();
        for (var service in services) {
          if (service.isPrimary &&
              service.serviceUuid.toString() == ConstantConfig.serviceUUID) {
            var characteristics = service.characteristics;
            for (BluetoothCharacteristic c in characteristics) {
              //
              if ((c.properties.notify || c.properties.indicate) &&
                  c.characteristicUuid.toString() ==
                      ConstantConfig.commandNotifyUUID) {
                c.onValueReceived.listen((value) {
                  // 将notify数据添加到集合中
                  state.notifyData.addAll(value);
                  String respString = utf8.decode(state.notifyData);
                  LJMLog.d("respString: $respString");
                  // 判断集合最后一个元素是否为0，如果是则此notify完成
                  if (state.notifyData.last == 0) {
                    try {
                      state.notifyData.removeLast();
                      String allRespString = utf8.decode(state.notifyData);
                      LJMLog.d("allRespString: $allRespString");
                      sender.sendMessage(allRespString);
                      state.notifyData.clear();
                    } catch (e) {
                      LJMLog.e("command notify解析失败: $e");
                      state.notifyData.clear();
                    }
                  }
                });
                await c.setNotifyValue(true);
              }
              //
              if ((c.properties.notify || c.properties.indicate) &&
                  c.characteristicUuid.toString() ==
                      ConstantConfig.audioStreamNotifyUUID) {
                c.onValueReceived.listen((value) {
                  LJMLog.d(value.length);
                });
                await c.setNotifyValue(true);
              }
              if ((c.properties.write || c.properties.indicate) &&
                  c.characteristicUuid.toString() == ConstantConfig.writeUUID) {
                state.writeCharacteristic = c;
              }
            }
          }
        }
        _bindUser();
      }
    });

    /// 监听MTU变化
    device.mtu.listen((int mtu) async {
      LJMLog.d("当前mtu: $mtu");
    });

    /// 进行蓝牙连接
    await device.connect();
  }

  _bindUser() async {
    var dict = {"opt": 82010, "optNum": 100, "userId": "刘佳明", "unbind": 1};
    _write(dict);
  }

  getSystemInfo(Function(String data) completion) async {
    sender.systemInfoSent = (String message) {
      completion(message);
    };
    var dict = {
      "opt": 82002,
      "optNum": 100,
    };
    _write(dict);
  }

  getFileList(Function(String data) completion) async {
    sender.fileListSent = (String message) {
      completion(message);
    };
    var dict = {
      "opt": 82004,
      "optNum": 200,
    };
    _write(dict);
  }

  getConfigInfo(Function(String data) completion) async {
    sender.configInfoSent = (String message) {
      completion(message);
    };
    var dict = {
      "opt": 82029,
      "optNum": 300,
    };
    _write(dict);
  }

  fileSync() {}

  /// - 私有化方法

  Future<bool> _able() async {
    try {
      if (await FlutterBluePlus.isSupported == true) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      LJMLog.e(e.toString());
      return false;
    }
  }

  _write(dynamic data) async {
    String jsonString = "${jsonEncode(data)}\u{0000}";
    List<int> jsonData = List<int>.from(utf8.encode(jsonString));
    await state.writeCharacteristic?.write(jsonData, allowLongWrite: true);
  }

  @override
  void onClose() {
    // TODO: implement onClose
    LJMLog.f("BleControllerLogic onClose");
    super.onClose();
  }
}
