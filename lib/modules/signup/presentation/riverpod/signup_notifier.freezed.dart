// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignupState {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  UserCredential? get userCredential => throw _privateConstructorUsedError;
  SignupStatus get signupStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignupStateCopyWith<SignupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupStateCopyWith<$Res> {
  factory $SignupStateCopyWith(
          SignupState value, $Res Function(SignupState) then) =
      _$SignupStateCopyWithImpl<$Res, SignupState>;
  @useResult
  $Res call(
      {String email,
      String password,
      UserCredential? userCredential,
      SignupStatus signupStatus});
}

/// @nodoc
class _$SignupStateCopyWithImpl<$Res, $Val extends SignupState>
    implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? userCredential = freezed,
    Object? signupStatus = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      userCredential: freezed == userCredential
          ? _value.userCredential
          : userCredential // ignore: cast_nullable_to_non_nullable
              as UserCredential?,
      signupStatus: null == signupStatus
          ? _value.signupStatus
          : signupStatus // ignore: cast_nullable_to_non_nullable
              as SignupStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignupStateImplCopyWith<$Res>
    implements $SignupStateCopyWith<$Res> {
  factory _$$SignupStateImplCopyWith(
          _$SignupStateImpl value, $Res Function(_$SignupStateImpl) then) =
      __$$SignupStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String password,
      UserCredential? userCredential,
      SignupStatus signupStatus});
}

/// @nodoc
class __$$SignupStateImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$SignupStateImpl>
    implements _$$SignupStateImplCopyWith<$Res> {
  __$$SignupStateImplCopyWithImpl(
      _$SignupStateImpl _value, $Res Function(_$SignupStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? userCredential = freezed,
    Object? signupStatus = null,
  }) {
    return _then(_$SignupStateImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      userCredential: freezed == userCredential
          ? _value.userCredential
          : userCredential // ignore: cast_nullable_to_non_nullable
              as UserCredential?,
      signupStatus: null == signupStatus
          ? _value.signupStatus
          : signupStatus // ignore: cast_nullable_to_non_nullable
              as SignupStatus,
    ));
  }
}

/// @nodoc

class _$SignupStateImpl implements _SignupState {
  const _$SignupStateImpl(
      {required this.email,
      required this.password,
      this.userCredential,
      required this.signupStatus});

  @override
  final String email;
  @override
  final String password;
  @override
  final UserCredential? userCredential;
  @override
  final SignupStatus signupStatus;

  @override
  String toString() {
    return 'SignupState(email: $email, password: $password, userCredential: $userCredential, signupStatus: $signupStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.userCredential, userCredential) ||
                other.userCredential == userCredential) &&
            (identical(other.signupStatus, signupStatus) ||
                other.signupStatus == signupStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, userCredential, signupStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupStateImplCopyWith<_$SignupStateImpl> get copyWith =>
      __$$SignupStateImplCopyWithImpl<_$SignupStateImpl>(this, _$identity);
}

abstract class _SignupState implements SignupState {
  const factory _SignupState(
      {required final String email,
      required final String password,
      final UserCredential? userCredential,
      required final SignupStatus signupStatus}) = _$SignupStateImpl;

  @override
  String get email;
  @override
  String get password;
  @override
  UserCredential? get userCredential;
  @override
  SignupStatus get signupStatus;
  @override
  @JsonKey(ignore: true)
  _$$SignupStateImplCopyWith<_$SignupStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
