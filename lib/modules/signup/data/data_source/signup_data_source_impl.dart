part of 'signup_data_source.dart';

class SignupDataSourceImpl implements SignupDataSource {
  @override
  Future<UserCredential> signup(SignupRequest signupRequest) async {
    print("--------${signupRequest.toJson()}");
    FirebaseAuth auth = FirebaseAuth.instance;
    return await auth.createUserWithEmailAndPassword(
        email: signupRequest.email, password: signupRequest.password);
  }
}
