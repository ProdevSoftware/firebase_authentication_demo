part of 'signup_notifier.dart';

enum SignupStatus {
  none,
  loading,
  error,
  success,
}

@freezed
class SignupState with _$SignupState {
  const factory SignupState({
    required String email,
    required String password,
    UserCredential? userCredential,
    required SignupStatus signupStatus,
  }) = _SignupState;

  factory SignupState.initial() => const SignupState(
    email: '',
    password: '',
    signupStatus: SignupStatus.none,
  );
}
