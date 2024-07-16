// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserInfoImpl _$$UserInfoImplFromJson(Map<String, dynamic> json) =>
    _$UserInfoImpl(
      token: json['token'] as String?,
      nickName: json['nickName'] as String?,
      deviceCodes: (json['deviceCodes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      tenantId: (json['tenantId'] as num?)?.toInt(),
      expireTime: (json['expireTime'] as num?)?.toInt(),
      isAlive: (json['isAlive'] as num?)?.toInt(),
      isExternal: (json['isExternal'] as num?)?.toInt(),
      needCard: (json['needCard'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UserInfoImplToJson(_$UserInfoImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'nickName': instance.nickName,
      'deviceCodes': instance.deviceCodes,
      'tenantId': instance.tenantId,
      'expireTime': instance.expireTime,
      'isAlive': instance.isAlive,
      'isExternal': instance.isExternal,
      'needCard': instance.needCard,
    };
