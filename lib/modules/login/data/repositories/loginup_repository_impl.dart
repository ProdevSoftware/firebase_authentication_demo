import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_authentication_demo/modules/login/data/data_source/login_data_source.dart';
import 'package:firebase_authentication_demo/modules/login/data/models/login_request_model.dart';
import 'package:firebase_authentication_demo/modules/login/domain/repositories/loginup_repository.dart';

class LoginRepositoryImpl extends LoginRepository {
  final LoginDataSource dataSource;

  LoginRepositoryImpl({required this.dataSource});

  @override
  Future<UserCredential> login(LoginRequest loginRequest) async {
    return dataSource.login(loginRequest);
  }
}
