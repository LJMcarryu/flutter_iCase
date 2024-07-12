import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'user_info.freezed.dart';
part 'user_info.g.dart';

@freezed
class userInfo with _$userInfo {
  const factory userInfo({
    String? token,
    String? nickName,
    List<String>? deviceCodes,
    int? tenantId,
    int? expireTime,
    int? isAlive,
    int? isExternal,
    int? needCard,
  }) = _userInfo;

  factory userInfo.fromJson(Map<String, Object?> json) =>
      _$userInfoFromJson(json);
}
