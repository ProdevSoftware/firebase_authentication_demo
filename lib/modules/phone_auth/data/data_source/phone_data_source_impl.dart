part of 'phone_data_source.dart';

class PhoneDataSourceImpl implements PhoneDataSource {
  @override
  Future<void> verifyPhoneNumberData(PhoneRequest phoneRequest) async {
    print("--------${phoneRequest.toJson()}");
    FirebaseAuth auth = FirebaseAuth.instance;
    try {
      await auth.verifyPhoneNumber(
        phoneNumber: phoneRequest.phone,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await auth.signInWithCredential(credential);
        },
        verificationFailed: (FirebaseAuthException e) {},
        codeSent: (String verificationId, int? resendToken) async {
          String smsCode = 'xxxxxx';
          PhoneAuthCredential credential = PhoneAuthProvider.credential(
            verificationId: verificationId,
            smsCode: smsCode,
          );
          await auth.signInWithCredential(credential);
        },
        codeAutoRetrievalTimeout: (String verificationId) {},
        timeout: Duration(seconds: 60),
      );
    } catch (e) {
      print('Phone verification error: $e');
      throw e;
    }
  }
}
