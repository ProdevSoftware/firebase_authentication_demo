// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'phone_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PhoneRequest _$PhoneRequestFromJson(Map<String, dynamic> json) {
  return _PhoneRequest.fromJson(json);
}

/// @nodoc
mixin _$PhoneRequest {
  String get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhoneRequestCopyWith<PhoneRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneRequestCopyWith<$Res> {
  factory $PhoneRequestCopyWith(
          PhoneRequest value, $Res Function(PhoneRequest) then) =
      _$PhoneRequestCopyWithImpl<$Res, PhoneRequest>;

  @useResult
  $Res call({String phone});
}

/// @nodoc
class _$PhoneRequestCopyWithImpl<$Res, $Val extends PhoneRequest>
    implements $PhoneRequestCopyWith<$Res> {
  _$PhoneRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_value.copyWith(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhoneRequestImplCopyWith<$Res>
    implements $PhoneRequestCopyWith<$Res> {
  factory _$$PhoneRequestImplCopyWith(
          _$PhoneRequestImpl value, $Res Function(_$PhoneRequestImpl) then) =
      __$$PhoneRequestImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({String phone});
}

/// @nodoc
class __$$PhoneRequestImplCopyWithImpl<$Res>
    extends _$PhoneRequestCopyWithImpl<$Res, _$PhoneRequestImpl>
    implements _$$PhoneRequestImplCopyWith<$Res> {
  __$$PhoneRequestImplCopyWithImpl(
      _$PhoneRequestImpl _value, $Res Function(_$PhoneRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_$PhoneRequestImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhoneRequestImpl implements _PhoneRequest {
  const _$PhoneRequestImpl({required this.phone});

  factory _$PhoneRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhoneRequestImplFromJson(json);

  @override
  final String phone;

  @override
  String toString() {
    return 'PhoneRequest(phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneRequestImpl &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneRequestImplCopyWith<_$PhoneRequestImpl> get copyWith =>
      __$$PhoneRequestImplCopyWithImpl<_$PhoneRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhoneRequestImplToJson(
      this,
    );
  }
}

abstract class _PhoneRequest implements PhoneRequest {
  const factory _PhoneRequest({required final String phone}) =
      _$PhoneRequestImpl;

  factory _PhoneRequest.fromJson(Map<String, dynamic> json) =
      _$PhoneRequestImpl.fromJson;

  @override
  String get phone;

  @override
  @JsonKey(ignore: true)
  _$$PhoneRequestImplCopyWith<_$PhoneRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
