import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_authentication_demo/modules/signup/data/data_source/signup_data_source.dart';
import 'package:firebase_authentication_demo/modules/signup/data/models/signup_request_model.dart';
import 'package:firebase_authentication_demo/modules/signup/domain/repositories/signup_repository.dart';

class SignupRepositoryImpl extends SignupRepository {
  final SignupDataSource dataSource;

  SignupRepositoryImpl({required this.dataSource});

  @override
  Future<UserCredential> signup(SignupRequest signupRequest) async {
    return dataSource.signup(signupRequest);
  }
}
