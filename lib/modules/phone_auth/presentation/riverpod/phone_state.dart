part of 'phone_notifier.dart';

enum OtpStatus {
  none,
  loading,
  success,
  error,
}

@freezed
class PhoneState with _$PhoneState {
  const factory PhoneState({
    required String phone,
    String? verificationId,
    int? resendToken,
    required VerifyNumberState verifyNumberState,
    required OtpStatus otpStatus,
    required String phoneNumberWithCountryCode,
  }) = _PhoneState;

  factory PhoneState.initial() => const PhoneState(
      phone: '',
      verificationId: '',
      resendToken: 0,
      verifyNumberState: VerifyNumberState.initial(),
      otpStatus: OtpStatus.none,
      phoneNumberWithCountryCode: '');
}
