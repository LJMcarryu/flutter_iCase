// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ble_common_resp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BleCommonResp _$BleCommonRespFromJson(Map<String, dynamic> json) {
  return _BleCommonResp.fromJson(json);
}

/// @nodoc
mixin _$BleCommonResp {
  int? get opt => throw _privateConstructorUsedError;
  int? get optNum => throw _privateConstructorUsedError;
  int? get errCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BleCommonRespCopyWith<BleCommonResp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BleCommonRespCopyWith<$Res> {
  factory $BleCommonRespCopyWith(
          BleCommonResp value, $Res Function(BleCommonResp) then) =
      _$BleCommonRespCopyWithImpl<$Res, BleCommonResp>;
  @useResult
  $Res call({int? opt, int? optNum, int? errCode});
}

/// @nodoc
class _$BleCommonRespCopyWithImpl<$Res, $Val extends BleCommonResp>
    implements $BleCommonRespCopyWith<$Res> {
  _$BleCommonRespCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? opt = freezed,
    Object? optNum = freezed,
    Object? errCode = freezed,
  }) {
    return _then(_value.copyWith(
      opt: freezed == opt
          ? _value.opt
          : opt // ignore: cast_nullable_to_non_nullable
              as int?,
      optNum: freezed == optNum
          ? _value.optNum
          : optNum // ignore: cast_nullable_to_non_nullable
              as int?,
      errCode: freezed == errCode
          ? _value.errCode
          : errCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BleCommonRespImplCopyWith<$Res>
    implements $BleCommonRespCopyWith<$Res> {
  factory _$$BleCommonRespImplCopyWith(
          _$BleCommonRespImpl value, $Res Function(_$BleCommonRespImpl) then) =
      __$$BleCommonRespImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? opt, int? optNum, int? errCode});
}

/// @nodoc
class __$$BleCommonRespImplCopyWithImpl<$Res>
    extends _$BleCommonRespCopyWithImpl<$Res, _$BleCommonRespImpl>
    implements _$$BleCommonRespImplCopyWith<$Res> {
  __$$BleCommonRespImplCopyWithImpl(
      _$BleCommonRespImpl _value, $Res Function(_$BleCommonRespImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? opt = freezed,
    Object? optNum = freezed,
    Object? errCode = freezed,
  }) {
    return _then(_$BleCommonRespImpl(
      opt: freezed == opt
          ? _value.opt
          : opt // ignore: cast_nullable_to_non_nullable
              as int?,
      optNum: freezed == optNum
          ? _value.optNum
          : optNum // ignore: cast_nullable_to_non_nullable
              as int?,
      errCode: freezed == errCode
          ? _value.errCode
          : errCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BleCommonRespImpl
    with DiagnosticableTreeMixin
    implements _BleCommonResp {
  const _$BleCommonRespImpl({this.opt, this.optNum, this.errCode});

  factory _$BleCommonRespImpl.fromJson(Map<String, dynamic> json) =>
      _$$BleCommonRespImplFromJson(json);

  @override
  final int? opt;
  @override
  final int? optNum;
  @override
  final int? errCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BleCommonResp(opt: $opt, optNum: $optNum, errCode: $errCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BleCommonResp'))
      ..add(DiagnosticsProperty('opt', opt))
      ..add(DiagnosticsProperty('optNum', optNum))
      ..add(DiagnosticsProperty('errCode', errCode));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BleCommonRespImpl &&
            (identical(other.opt, opt) || other.opt == opt) &&
            (identical(other.optNum, optNum) || other.optNum == optNum) &&
            (identical(other.errCode, errCode) || other.errCode == errCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, opt, optNum, errCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BleCommonRespImplCopyWith<_$BleCommonRespImpl> get copyWith =>
      __$$BleCommonRespImplCopyWithImpl<_$BleCommonRespImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BleCommonRespImplToJson(
      this,
    );
  }
}

abstract class _BleCommonResp implements BleCommonResp {
  const factory _BleCommonResp(
      {final int? opt,
      final int? optNum,
      final int? errCode}) = _$BleCommonRespImpl;

  factory _BleCommonResp.fromJson(Map<String, dynamic> json) =
      _$BleCommonRespImpl.fromJson;

  @override
  int? get opt;
  @override
  int? get optNum;
  @override
  int? get errCode;
  @override
  @JsonKey(ignore: true)
  _$$BleCommonRespImplCopyWith<_$BleCommonRespImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
