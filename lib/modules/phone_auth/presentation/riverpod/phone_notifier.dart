import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_authentication_demo/modules/phone_auth/domain/use_case/phone_use_case.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

part 'phone_state.dart';

part 'phone_notifier.freezed.dart';

part 'verify_phone_status_state.dart';

final phoneResultNotifier = NotifierProvider<PhoneNotifier, PhoneState>(
  PhoneNotifier.new,
);

class PhoneNotifier extends Notifier<PhoneState> {
  late PhoneUseCase _useCase;

  @override
  PhoneState build() {
    _useCase = ref.read(phoneUseCaseProvider);
    return PhoneState.initial();
  }

  Future<void> phoneVerify({
    required String phone,
    int? resendToken,
  }) async {
    try {
      state =
          state.copyWith(verifyNumberState: const VerifyNumberState.loading());

      FirebaseAuth auth = FirebaseAuth.instance;
      await auth.verifyPhoneNumber(
        phoneNumber: phone,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await auth.signInWithCredential(credential);
        },
        verificationFailed: (FirebaseAuthException e) {
          state = state.copyWith(
            verifyNumberState:
                VerifyNumberState.verificationFailed(exception: e),
          );
        },
        forceResendingToken: resendToken,
        codeSent: (String verificationId, int? token) async {
          state = state.copyWith(
            phone: phone,
            resendToken: token,
            verificationId: verificationId,
            verifyNumberState: VerifyNumberState.codeSent(
              verificationId: verificationId,
              resendToken: token,
            ),
          );
        },
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
    } catch (e, stackTrace) {
      state = state.copyWith(
        verifyNumberState: VerifyNumberState.verificationFailed(
          exception: FirebaseAuthException(
              code: '500', message: 'Verification failed'),
        ),
      );
      Logger().e(e.toString());
      Logger().e(stackTrace.toString());
    }
  }

  Future<void> otpVerify({required String otp}) async {
    state = state.copyWith(otpStatus: OtpStatus.loading);

    try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: state.verificationId ?? '',
        smsCode: otp,
      );

      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);

      if (userCredential.user != null) {
        state = state.copyWith(otpStatus: OtpStatus.success);
      } else {
        state = state.copyWith(otpStatus: OtpStatus.error);
      }
    } catch (error) {
      state = state.copyWith(otpStatus: OtpStatus.error);
      Logger().e('Exception when submitting OTP: $error');
    }
  }

  Future<void> phoneNumber({required String phoneNumberWithCountryCode}) async {
    state =
        state.copyWith(phoneNumberWithCountryCode: phoneNumberWithCountryCode);
  }
}
