import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_authentication_demo/modules/login/data/models/login_request_model.dart';
import 'package:firebase_authentication_demo/modules/login/domain/repositories/loginup_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginUseCaseProvider = Provider(
  (ref) => LoginUseCase(
    repository: ref.read(loginRepositoryProvider),
  ),
);

class LoginUseCase {
  LoginUseCase({required this.repository});

  final LoginRepository repository;

  Future<UserCredential> login(LoginRequest loginRequest) async {
    return await repository.login(loginRequest);
  }
}
