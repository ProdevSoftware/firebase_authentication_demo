import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_authentication_demo/modules/signup/data/models/signup_request_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'signup_data_source_impl.dart';

final signupDataSourceProvider = Provider((ref) => SignupDataSourceImpl());

abstract class SignupDataSource {
  Future<UserCredential> signup(SignupRequest signupRequest);
}
