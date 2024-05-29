part of 'login_data_source.dart';

class LoginDataSourceImpl implements LoginDataSource {
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Future<UserCredential> login(LoginRequest loginRequest) async {
    print("--------${loginRequest.toJson()}");

    return await auth.signInWithEmailAndPassword(
        email: loginRequest.email, password: loginRequest.password);
  }
}
