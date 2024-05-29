import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_authentication_demo/modules/login/data/models/login_request_model.dart';
import 'package:firebase_authentication_demo/modules/login/domain/use_case/login_use_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:logger/logger.dart';

part 'login_state.dart';

part 'login_notifier.freezed.dart';

final loginResultNotifier = NotifierProvider<LoginNotifier, LoginState>(
  LoginNotifier.new,
);

class LoginNotifier extends Notifier<LoginState> {
  late LoginUseCase _useCase;

  @override
  LoginState build() {
    _useCase = ref.read(loginUseCaseProvider);
    return LoginState.initial();
  }

  Future<void> login({required String email, required String password}) async {
    try {
      state = state.copyWith(loginStatus: LoginStatus.loading);
      LoginRequest loginRequest =
          LoginRequest(email: email, password: password);
      UserCredential userCredential = await _useCase.login(loginRequest);
      if (userCredential.user != null) {
        state = state.copyWith(
          loginStatus: LoginStatus.success,
          userCredential: userCredential,
        );
      } else {
        state = state.copyWith(loginStatus: LoginStatus.error);
      }
    } catch (e, stackTrace) {
      state = state.copyWith(loginStatus: LoginStatus.error);
      Logger().e(e.toString());
      Logger().e(stackTrace.toString());
    }
  }

  Future<void> signInWithGoogle() async {
    try {
      state = state.copyWith(loginStatus: LoginStatus.loading);

      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      if (userCredential.user != null) {
        state = state.copyWith(
          loginStatus: LoginStatus.success,
          userCredential: userCredential,
        );
      } else {
        state = state.copyWith(loginStatus: LoginStatus.error);
      }
    } catch (e, stackTrace) {
      state = state.copyWith(loginStatus: LoginStatus.error);
      Logger().e(e.toString());
      Logger().e(stackTrace.toString());
      rethrow;
    }
  }

  Future<void> signOut() async {
    try {
      state = state.copyWith(loginStatus: LoginStatus.loading);
      FirebaseAuth auth = FirebaseAuth.instance;
      await auth.signOut();
      state = state.copyWith(
          loginStatus: LoginStatus.initial, userCredential: null);
    } catch (e, stackTrace) {
      state = state.copyWith(loginStatus: LoginStatus.error);
      Logger().e(e.toString());
      Logger().e(stackTrace.toString());
      rethrow;
    }
  }
}
