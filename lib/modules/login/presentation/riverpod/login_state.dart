part of 'login_notifier.dart';

enum LoginStatus {
  none,
  loading,
  error,
  success,
  initial,
}

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required String email,
    required String password,
    UserCredential? userCredential,
    required LoginStatus loginStatus,
  }) = _LoginState;

  factory LoginState.initial() => const LoginState(
        email: '',
        password: '',
        loginStatus: LoginStatus.none,
      );
}
