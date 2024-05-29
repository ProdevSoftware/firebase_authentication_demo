import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_authentication_demo/modules/login/data/data_source/login_data_source.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/login_request_model.dart';
import '../../data/repositories/loginup_repository_impl.dart';

final loginRepositoryProvider = Provider(
  (ref) => LoginRepositoryImpl(
    dataSource: ref.read(loginDataSourceProvider),
  ),
);

abstract class LoginRepository {
  Future<UserCredential> login(
    LoginRequest loginRequest,
  );
}
