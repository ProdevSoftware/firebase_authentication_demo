import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_authentication_demo/modules/signup/data/models/signup_request_model.dart';
import 'package:firebase_authentication_demo/modules/signup/domain/use_case/signup_use_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

part 'signup_state.dart';

part 'signup_notifier.freezed.dart';

final signupResultNotifier = NotifierProvider<SignupNotifier, SignupState>(
  SignupNotifier.new,
);

class SignupNotifier extends Notifier<SignupState> {
  late SignupUseCase _useCase;

  @override
  SignupState build() {
    _useCase = ref.read(signupUseCaseProvider);
    return SignupState.initial();
  }

  Future<void> signup({required String email, required String password}) async {
    try {
      state = state.copyWith(signupStatus: SignupStatus.loading);
      SignupRequest signupRequest =
          SignupRequest(email: email, password: password);
      UserCredential userCredential = await _useCase.signup(signupRequest);
      if (userCredential.user != null) {
        state = state.copyWith(
          signupStatus: SignupStatus.success,
          userCredential: userCredential,
        );
      } else {
        state = state.copyWith(signupStatus: SignupStatus.error);
      }
    } catch (e, stackTrace) {
      state = state.copyWith(signupStatus: SignupStatus.error);
      Logger().e(e.toString());
      Logger().e(stackTrace.toString());
    }
  }
}
