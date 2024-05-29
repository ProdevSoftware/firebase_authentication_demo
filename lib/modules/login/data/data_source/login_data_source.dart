import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_authentication_demo/modules/login/data/models/login_request_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'login_data_source_impl.dart';

final loginDataSourceProvider = Provider((ref) => LoginDataSourceImpl());

abstract class LoginDataSource {
  Future<UserCredential> login(LoginRequest loginRequest);
}
