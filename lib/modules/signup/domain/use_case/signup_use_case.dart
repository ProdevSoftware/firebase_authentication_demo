import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_authentication_demo/modules/signup/data/models/signup_request_model.dart';
import 'package:firebase_authentication_demo/modules/signup/domain/repositories/signup_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final signupUseCaseProvider = Provider(
  (ref) => SignupUseCase(
    repository: ref.read(signupRepositoryProvider),
  ),
);

class SignupUseCase {
  SignupUseCase({required this.repository});

  final SignupRepository repository;

  Future<UserCredential> signup(SignupRequest signupRequest) async {
    return await repository.signup(signupRequest);
  }
}
