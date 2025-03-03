// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) {
  return _UserInfo.fromJson(json);
}

/// @nodoc
mixin _$UserInfo {
  String? get token => throw _privateConstructorUsedError;
  String? get nickName => throw _privateConstructorUsedError;
  List<String>? get deviceCodes => throw _privateConstructorUsedError;
  int? get tenantId => throw _privateConstructorUsedError;
  int? get expireTime => throw _privateConstructorUsedError;
  int? get isAlive => throw _privateConstructorUsedError;
  int? get isExternal => throw _privateConstructorUsedError;
  int? get needCard => throw _privateConstructorUsedError;
  int? get isChangedPassword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserInfoCopyWith<UserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoCopyWith<$Res> {
  factory $UserInfoCopyWith(UserInfo value, $Res Function(UserInfo) then) =
      _$UserInfoCopyWithImpl<$Res, UserInfo>;
  @useResult
  $Res call(
      {String? token,
      String? nickName,
      List<String>? deviceCodes,
      int? tenantId,
      int? expireTime,
      int? isAlive,
      int? isExternal,
      int? needCard,
      int? isChangedPassword});
}

/// @nodoc
class _$UserInfoCopyWithImpl<$Res, $Val extends UserInfo>
    implements $UserInfoCopyWith<$Res> {
  _$UserInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? nickName = freezed,
    Object? deviceCodes = freezed,
    Object? tenantId = freezed,
    Object? expireTime = freezed,
    Object? isAlive = freezed,
    Object? isExternal = freezed,
    Object? needCard = freezed,
    Object? isChangedPassword = freezed,
  }) {
    return _then(_value.copyWith(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      nickName: freezed == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceCodes: freezed == deviceCodes
          ? _value.deviceCodes
          : deviceCodes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as int?,
      expireTime: freezed == expireTime
          ? _value.expireTime
          : expireTime // ignore: cast_nullable_to_non_nullable
              as int?,
      isAlive: freezed == isAlive
          ? _value.isAlive
          : isAlive // ignore: cast_nullable_to_non_nullable
              as int?,
      isExternal: freezed == isExternal
          ? _value.isExternal
          : isExternal // ignore: cast_nullable_to_non_nullable
              as int?,
      needCard: freezed == needCard
          ? _value.needCard
          : needCard // ignore: cast_nullable_to_non_nullable
              as int?,
      isChangedPassword: freezed == isChangedPassword
          ? _value.isChangedPassword
          : isChangedPassword // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserInfoImplCopyWith<$Res>
    implements $UserInfoCopyWith<$Res> {
  factory _$$UserInfoImplCopyWith(
          _$UserInfoImpl value, $Res Function(_$UserInfoImpl) then) =
      __$$UserInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? token,
      String? nickName,
      List<String>? deviceCodes,
      int? tenantId,
      int? expireTime,
      int? isAlive,
      int? isExternal,
      int? needCard,
      int? isChangedPassword});
}

/// @nodoc
class __$$UserInfoImplCopyWithImpl<$Res>
    extends _$UserInfoCopyWithImpl<$Res, _$UserInfoImpl>
    implements _$$UserInfoImplCopyWith<$Res> {
  __$$UserInfoImplCopyWithImpl(
      _$UserInfoImpl _value, $Res Function(_$UserInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? nickName = freezed,
    Object? deviceCodes = freezed,
    Object? tenantId = freezed,
    Object? expireTime = freezed,
    Object? isAlive = freezed,
    Object? isExternal = freezed,
    Object? needCard = freezed,
    Object? isChangedPassword = freezed,
  }) {
    return _then(_$UserInfoImpl(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      nickName: freezed == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceCodes: freezed == deviceCodes
          ? _value._deviceCodes
          : deviceCodes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      tenantId: freezed == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as int?,
      expireTime: freezed == expireTime
          ? _value.expireTime
          : expireTime // ignore: cast_nullable_to_non_nullable
              as int?,
      isAlive: freezed == isAlive
          ? _value.isAlive
          : isAlive // ignore: cast_nullable_to_non_nullable
              as int?,
      isExternal: freezed == isExternal
          ? _value.isExternal
          : isExternal // ignore: cast_nullable_to_non_nullable
              as int?,
      needCard: freezed == needCard
          ? _value.needCard
          : needCard // ignore: cast_nullable_to_non_nullable
              as int?,
      isChangedPassword: freezed == isChangedPassword
          ? _value.isChangedPassword
          : isChangedPassword // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserInfoImpl with DiagnosticableTreeMixin implements _UserInfo {
  const _$UserInfoImpl(
      {this.token,
      this.nickName,
      final List<String>? deviceCodes,
      this.tenantId,
      this.expireTime,
      this.isAlive,
      this.isExternal,
      this.needCard,
      this.isChangedPassword})
      : _deviceCodes = deviceCodes;

  factory _$UserInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserInfoImplFromJson(json);

  @override
  final String? token;
  @override
  final String? nickName;
  final List<String>? _deviceCodes;
  @override
  List<String>? get deviceCodes {
    final value = _deviceCodes;
    if (value == null) return null;
    if (_deviceCodes is EqualUnmodifiableListView) return _deviceCodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? tenantId;
  @override
  final int? expireTime;
  @override
  final int? isAlive;
  @override
  final int? isExternal;
  @override
  final int? needCard;
  @override
  final int? isChangedPassword;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserInfo(token: $token, nickName: $nickName, deviceCodes: $deviceCodes, tenantId: $tenantId, expireTime: $expireTime, isAlive: $isAlive, isExternal: $isExternal, needCard: $needCard, isChangedPassword: $isChangedPassword)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserInfo'))
      ..add(DiagnosticsProperty('token', token))
      ..add(DiagnosticsProperty('nickName', nickName))
      ..add(DiagnosticsProperty('deviceCodes', deviceCodes))
      ..add(DiagnosticsProperty('tenantId', tenantId))
      ..add(DiagnosticsProperty('expireTime', expireTime))
      ..add(DiagnosticsProperty('isAlive', isAlive))
      ..add(DiagnosticsProperty('isExternal', isExternal))
      ..add(DiagnosticsProperty('needCard', needCard))
      ..add(DiagnosticsProperty('isChangedPassword', isChangedPassword));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInfoImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            const DeepCollectionEquality()
                .equals(other._deviceCodes, _deviceCodes) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId) &&
            (identical(other.expireTime, expireTime) ||
                other.expireTime == expireTime) &&
            (identical(other.isAlive, isAlive) || other.isAlive == isAlive) &&
            (identical(other.isExternal, isExternal) ||
                other.isExternal == isExternal) &&
            (identical(other.needCard, needCard) ||
                other.needCard == needCard) &&
            (identical(other.isChangedPassword, isChangedPassword) ||
                other.isChangedPassword == isChangedPassword));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      token,
      nickName,
      const DeepCollectionEquality().hash(_deviceCodes),
      tenantId,
      expireTime,
      isAlive,
      isExternal,
      needCard,
      isChangedPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInfoImplCopyWith<_$UserInfoImpl> get copyWith =>
      __$$UserInfoImplCopyWithImpl<_$UserInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserInfoImplToJson(
      this,
    );
  }
}

abstract class _UserInfo implements UserInfo {
  const factory _UserInfo(
      {final String? token,
      final String? nickName,
      final List<String>? deviceCodes,
      final int? tenantId,
      final int? expireTime,
      final int? isAlive,
      final int? isExternal,
      final int? needCard,
      final int? isChangedPassword}) = _$UserInfoImpl;

  factory _UserInfo.fromJson(Map<String, dynamic> json) =
      _$UserInfoImpl.fromJson;

  @override
  String? get token;
  @override
  String? get nickName;
  @override
  List<String>? get deviceCodes;
  @override
  int? get tenantId;
  @override
  int? get expireTime;
  @override
  int? get isAlive;
  @override
  int? get isExternal;
  @override
  int? get needCard;
  @override
  int? get isChangedPassword;
  @override
  @JsonKey(ignore: true)
  _$$UserInfoImplCopyWith<_$UserInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
