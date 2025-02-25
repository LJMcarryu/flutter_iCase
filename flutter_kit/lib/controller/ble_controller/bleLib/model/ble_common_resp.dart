import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'ble_common_resp.freezed.dart';
part 'ble_common_resp.g.dart';

@freezed
class BleCommonResp with _$BleCommonResp {
  const factory BleCommonResp({
    int? opt,
    int? optNum,
    int? errCode,
  }) = _BleCommonResp;

  factory BleCommonResp.fromJson(Map<String, Object?> json) =>
      _$BleCommonRespFromJson(json);
}