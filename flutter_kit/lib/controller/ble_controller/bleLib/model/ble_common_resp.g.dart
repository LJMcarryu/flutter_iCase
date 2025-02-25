// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ble_common_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BleCommonRespImpl _$$BleCommonRespImplFromJson(Map<String, dynamic> json) =>
    _$BleCommonRespImpl(
      opt: (json['opt'] as num?)?.toInt(),
      optNum: (json['optNum'] as num?)?.toInt(),
      errCode: (json['errCode'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$BleCommonRespImplToJson(_$BleCommonRespImpl instance) =>
    <String, dynamic>{
      'opt': instance.opt,
      'optNum': instance.optNum,
      'errCode': instance.errCode,
    };
