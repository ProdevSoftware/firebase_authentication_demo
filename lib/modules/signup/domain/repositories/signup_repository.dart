import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_authentication_demo/modules/signup/data/data_source/signup_data_source.dart';
import 'package:firebase_authentication_demo/modules/signup/data/models/signup_request_model.dart';
import 'package:firebase_authentication_demo/modules/signup/data/repositories/signup_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final signupRepositoryProvider = Provider(
  (ref) => SignupRepositoryImpl(
    dataSource: ref.read(signupDataSourceProvider),
  ),
);

abstract class SignupRepository {
  Future<UserCredential> signup(
    SignupRequest signupRequest,
  );
}
