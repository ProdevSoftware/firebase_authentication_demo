// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'phone_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PhoneState {
  String get phone => throw _privateConstructorUsedError;

  String? get verificationId => throw _privateConstructorUsedError;

  int? get resendToken => throw _privateConstructorUsedError;

  VerifyNumberState get verifyNumberState => throw _privateConstructorUsedError;

  OtpStatus get otpStatus => throw _privateConstructorUsedError;

  String get phoneNumberWithCountryCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhoneStateCopyWith<PhoneState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneStateCopyWith<$Res> {
  factory $PhoneStateCopyWith(
          PhoneState value, $Res Function(PhoneState) then) =
      _$PhoneStateCopyWithImpl<$Res, PhoneState>;

  @useResult
  $Res call(
      {String phone,
      String? verificationId,
      int? resendToken,
      VerifyNumberState verifyNumberState,
      OtpStatus otpStatus,
      String phoneNumberWithCountryCode});

  $VerifyNumberStateCopyWith<$Res> get verifyNumberState;
}

/// @nodoc
class _$PhoneStateCopyWithImpl<$Res, $Val extends PhoneState>
    implements $PhoneStateCopyWith<$Res> {
  _$PhoneStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? verificationId = freezed,
    Object? resendToken = freezed,
    Object? verifyNumberState = null,
    Object? otpStatus = null,
    Object? phoneNumberWithCountryCode = null,
  }) {
    return _then(_value.copyWith(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      verificationId: freezed == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String?,
      resendToken: freezed == resendToken
          ? _value.resendToken
          : resendToken // ignore: cast_nullable_to_non_nullable
              as int?,
      verifyNumberState: null == verifyNumberState
          ? _value.verifyNumberState
          : verifyNumberState // ignore: cast_nullable_to_non_nullable
              as VerifyNumberState,
      otpStatus: null == otpStatus
          ? _value.otpStatus
          : otpStatus // ignore: cast_nullable_to_non_nullable
              as OtpStatus,
      phoneNumberWithCountryCode: null == phoneNumberWithCountryCode
          ? _value.phoneNumberWithCountryCode
          : phoneNumberWithCountryCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VerifyNumberStateCopyWith<$Res> get verifyNumberState {
    return $VerifyNumberStateCopyWith<$Res>(_value.verifyNumberState, (value) {
      return _then(_value.copyWith(verifyNumberState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PhoneStateImplCopyWith<$Res>
    implements $PhoneStateCopyWith<$Res> {
  factory _$$PhoneStateImplCopyWith(
          _$PhoneStateImpl value, $Res Function(_$PhoneStateImpl) then) =
      __$$PhoneStateImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {String phone,
      String? verificationId,
      int? resendToken,
      VerifyNumberState verifyNumberState,
      OtpStatus otpStatus,
      String phoneNumberWithCountryCode});

  @override
  $VerifyNumberStateCopyWith<$Res> get verifyNumberState;
}

/// @nodoc
class __$$PhoneStateImplCopyWithImpl<$Res>
    extends _$PhoneStateCopyWithImpl<$Res, _$PhoneStateImpl>
    implements _$$PhoneStateImplCopyWith<$Res> {
  __$$PhoneStateImplCopyWithImpl(
      _$PhoneStateImpl _value, $Res Function(_$PhoneStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? verificationId = freezed,
    Object? resendToken = freezed,
    Object? verifyNumberState = null,
    Object? otpStatus = null,
    Object? phoneNumberWithCountryCode = null,
  }) {
    return _then(_$PhoneStateImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      verificationId: freezed == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String?,
      resendToken: freezed == resendToken
          ? _value.resendToken
          : resendToken // ignore: cast_nullable_to_non_nullable
              as int?,
      verifyNumberState: null == verifyNumberState
          ? _value.verifyNumberState
          : verifyNumberState // ignore: cast_nullable_to_non_nullable
              as VerifyNumberState,
      otpStatus: null == otpStatus
          ? _value.otpStatus
          : otpStatus // ignore: cast_nullable_to_non_nullable
              as OtpStatus,
      phoneNumberWithCountryCode: null == phoneNumberWithCountryCode
          ? _value.phoneNumberWithCountryCode
          : phoneNumberWithCountryCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneStateImpl implements _PhoneState {
  const _$PhoneStateImpl(
      {required this.phone,
      this.verificationId,
      this.resendToken,
      required this.verifyNumberState,
      required this.otpStatus,
      required this.phoneNumberWithCountryCode});

  @override
  final String phone;
  @override
  final String? verificationId;
  @override
  final int? resendToken;
  @override
  final VerifyNumberState verifyNumberState;
  @override
  final OtpStatus otpStatus;
  @override
  final String phoneNumberWithCountryCode;

  @override
  String toString() {
    return 'PhoneState(phone: $phone, verificationId: $verificationId, resendToken: $resendToken, verifyNumberState: $verifyNumberState, otpStatus: $otpStatus, phoneNumberWithCountryCode: $phoneNumberWithCountryCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneStateImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId) &&
            (identical(other.resendToken, resendToken) ||
                other.resendToken == resendToken) &&
            (identical(other.verifyNumberState, verifyNumberState) ||
                other.verifyNumberState == verifyNumberState) &&
            (identical(other.otpStatus, otpStatus) ||
                other.otpStatus == otpStatus) &&
            (identical(other.phoneNumberWithCountryCode,
                    phoneNumberWithCountryCode) ||
                other.phoneNumberWithCountryCode ==
                    phoneNumberWithCountryCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone, verificationId,
      resendToken, verifyNumberState, otpStatus, phoneNumberWithCountryCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneStateImplCopyWith<_$PhoneStateImpl> get copyWith =>
      __$$PhoneStateImplCopyWithImpl<_$PhoneStateImpl>(this, _$identity);
}

abstract class _PhoneState implements PhoneState {
  const factory _PhoneState(
      {required final String phone,
      final String? verificationId,
      final int? resendToken,
      required final VerifyNumberState verifyNumberState,
      required final OtpStatus otpStatus,
      required final String phoneNumberWithCountryCode}) = _$PhoneStateImpl;

  @override
  String get phone;

  @override
  String? get verificationId;

  @override
  int? get resendToken;

  @override
  VerifyNumberState get verifyNumberState;

  @override
  OtpStatus get otpStatus;

  @override
  String get phoneNumberWithCountryCode;

  @override
  @JsonKey(ignore: true)
  _$$PhoneStateImplCopyWith<_$PhoneStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VerifyNumberState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String verificationId, int? resendToken) codeSent,
    required TResult Function(FirebaseAuthException exception)
        verificationFailed,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String verificationId, int? resendToken)? codeSent,
    TResult? Function(FirebaseAuthException exception)? verificationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String verificationId, int? resendToken)? codeSent,
    TResult Function(FirebaseAuthException exception)? verificationFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_VerificationFailed value) verificationFailed,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CodeSent value)? codeSent,
    TResult? Function(_VerificationFailed value)? verificationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_VerificationFailed value)? verificationFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyNumberStateCopyWith<$Res> {
  factory $VerifyNumberStateCopyWith(
          VerifyNumberState value, $Res Function(VerifyNumberState) then) =
      _$VerifyNumberStateCopyWithImpl<$Res, VerifyNumberState>;
}

/// @nodoc
class _$VerifyNumberStateCopyWithImpl<$Res, $Val extends VerifyNumberState>
    implements $VerifyNumberStateCopyWith<$Res> {
  _$VerifyNumberStateCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$VerifyNumberStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'VerifyNumberState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String verificationId, int? resendToken) codeSent,
    required TResult Function(FirebaseAuthException exception)
        verificationFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String verificationId, int? resendToken)? codeSent,
    TResult? Function(FirebaseAuthException exception)? verificationFailed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String verificationId, int? resendToken)? codeSent,
    TResult Function(FirebaseAuthException exception)? verificationFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_VerificationFailed value) verificationFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CodeSent value)? codeSent,
    TResult? Function(_VerificationFailed value)? verificationFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_VerificationFailed value)? verificationFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements VerifyNumberState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$VerifyNumberStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'VerifyNumberState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String verificationId, int? resendToken) codeSent,
    required TResult Function(FirebaseAuthException exception)
        verificationFailed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String verificationId, int? resendToken)? codeSent,
    TResult? Function(FirebaseAuthException exception)? verificationFailed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String verificationId, int? resendToken)? codeSent,
    TResult Function(FirebaseAuthException exception)? verificationFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_VerificationFailed value) verificationFailed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CodeSent value)? codeSent,
    TResult? Function(_VerificationFailed value)? verificationFailed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_VerificationFailed value)? verificationFailed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements VerifyNumberState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$CodeSentImplCopyWith<$Res> {
  factory _$$CodeSentImplCopyWith(
          _$CodeSentImpl value, $Res Function(_$CodeSentImpl) then) =
      __$$CodeSentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String verificationId, int? resendToken});
}

/// @nodoc
class __$$CodeSentImplCopyWithImpl<$Res>
    extends _$VerifyNumberStateCopyWithImpl<$Res, _$CodeSentImpl>
    implements _$$CodeSentImplCopyWith<$Res> {
  __$$CodeSentImplCopyWithImpl(
      _$CodeSentImpl _value, $Res Function(_$CodeSentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verificationId = null,
    Object? resendToken = freezed,
  }) {
    return _then(_$CodeSentImpl(
      verificationId: null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      resendToken: freezed == resendToken
          ? _value.resendToken
          : resendToken // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$CodeSentImpl implements _CodeSent {
  const _$CodeSentImpl(
      {required this.verificationId, required this.resendToken});

  @override
  final String verificationId;
  @override
  final int? resendToken;

  @override
  String toString() {
    return 'VerifyNumberState.codeSent(verificationId: $verificationId, resendToken: $resendToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CodeSentImpl &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId) &&
            (identical(other.resendToken, resendToken) ||
                other.resendToken == resendToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, verificationId, resendToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CodeSentImplCopyWith<_$CodeSentImpl> get copyWith =>
      __$$CodeSentImplCopyWithImpl<_$CodeSentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String verificationId, int? resendToken) codeSent,
    required TResult Function(FirebaseAuthException exception)
        verificationFailed,
  }) {
    return codeSent(verificationId, resendToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String verificationId, int? resendToken)? codeSent,
    TResult? Function(FirebaseAuthException exception)? verificationFailed,
  }) {
    return codeSent?.call(verificationId, resendToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String verificationId, int? resendToken)? codeSent,
    TResult Function(FirebaseAuthException exception)? verificationFailed,
    required TResult orElse(),
  }) {
    if (codeSent != null) {
      return codeSent(verificationId, resendToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_VerificationFailed value) verificationFailed,
  }) {
    return codeSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CodeSent value)? codeSent,
    TResult? Function(_VerificationFailed value)? verificationFailed,
  }) {
    return codeSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_VerificationFailed value)? verificationFailed,
    required TResult orElse(),
  }) {
    if (codeSent != null) {
      return codeSent(this);
    }
    return orElse();
  }
}

abstract class _CodeSent implements VerifyNumberState {
  const factory _CodeSent(
      {required final String verificationId,
      required final int? resendToken}) = _$CodeSentImpl;

  String get verificationId;
  int? get resendToken;
  @JsonKey(ignore: true)
  _$$CodeSentImplCopyWith<_$CodeSentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerificationFailedImplCopyWith<$Res> {
  factory _$$VerificationFailedImplCopyWith(_$VerificationFailedImpl value,
          $Res Function(_$VerificationFailedImpl) then) =
      __$$VerificationFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FirebaseAuthException exception});
}

/// @nodoc
class __$$VerificationFailedImplCopyWithImpl<$Res>
    extends _$VerifyNumberStateCopyWithImpl<$Res, _$VerificationFailedImpl>
    implements _$$VerificationFailedImplCopyWith<$Res> {
  __$$VerificationFailedImplCopyWithImpl(_$VerificationFailedImpl _value,
      $Res Function(_$VerificationFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$VerificationFailedImpl(
      exception: null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as FirebaseAuthException,
    ));
  }
}

/// @nodoc

class _$VerificationFailedImpl implements _VerificationFailed {
  const _$VerificationFailedImpl({required this.exception});

  @override
  final FirebaseAuthException exception;

  @override
  String toString() {
    return 'VerifyNumberState.verificationFailed(exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationFailedImpl &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerificationFailedImplCopyWith<_$VerificationFailedImpl> get copyWith =>
      __$$VerificationFailedImplCopyWithImpl<_$VerificationFailedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String verificationId, int? resendToken) codeSent,
    required TResult Function(FirebaseAuthException exception)
        verificationFailed,
  }) {
    return verificationFailed(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String verificationId, int? resendToken)? codeSent,
    TResult? Function(FirebaseAuthException exception)? verificationFailed,
  }) {
    return verificationFailed?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String verificationId, int? resendToken)? codeSent,
    TResult Function(FirebaseAuthException exception)? verificationFailed,
    required TResult orElse(),
  }) {
    if (verificationFailed != null) {
      return verificationFailed(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_CodeSent value) codeSent,
    required TResult Function(_VerificationFailed value) verificationFailed,
  }) {
    return verificationFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_CodeSent value)? codeSent,
    TResult? Function(_VerificationFailed value)? verificationFailed,
  }) {
    return verificationFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_CodeSent value)? codeSent,
    TResult Function(_VerificationFailed value)? verificationFailed,
    required TResult orElse(),
  }) {
    if (verificationFailed != null) {
      return verificationFailed(this);
    }
    return orElse();
  }
}

abstract class _VerificationFailed implements VerifyNumberState {
  const factory _VerificationFailed(
          {required final FirebaseAuthException exception}) =
      _$VerificationFailedImpl;

  FirebaseAuthException get exception;
  @JsonKey(ignore: true)
  _$$VerificationFailedImplCopyWith<_$VerificationFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
