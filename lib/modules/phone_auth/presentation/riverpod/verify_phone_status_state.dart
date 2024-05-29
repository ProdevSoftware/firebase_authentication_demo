part of 'phone_notifier.dart';

@freezed
class VerifyNumberState with _$VerifyNumberState {
  const factory VerifyNumberState.initial() = _Initial;

  const factory VerifyNumberState.loading() = _Loading;

  const factory VerifyNumberState.codeSent({
    required String verificationId,
    required int? resendToken,
  }) = _CodeSent;

  const factory VerifyNumberState.verificationFailed({
    required FirebaseAuthException exception,
  }) = _VerificationFailed;
}
