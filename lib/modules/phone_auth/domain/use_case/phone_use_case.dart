import 'package:firebase_authentication_demo/modules/phone_auth/domain/repositories/phone_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/phone_request_model.dart';

final phoneUseCaseProvider = Provider(
  (ref) => PhoneUseCase(
    repository: ref.read(phoneRepositoryProvider),
  ),
);

class PhoneUseCase {
  PhoneUseCase({required this.repository});

  final PhoneRepository repository;

  Future<void> verifyPhoneNumberData(PhoneRequest phoneRequest) async {
    return await repository.verifyPhoneNumberData(phoneRequest);
  }
}
