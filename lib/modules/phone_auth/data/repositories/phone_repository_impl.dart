import 'package:firebase_authentication_demo/modules/phone_auth/data/data_source/phone_data_source.dart';
import 'package:firebase_authentication_demo/modules/phone_auth/data/models/phone_request_model.dart';
import '../../domain/repositories/phone_repository.dart';

class PhoneRepositoryImpl extends PhoneRepository {
  final PhoneDataSource dataSource;

  PhoneRepositoryImpl({required this.dataSource});

  @override
  Future<void> verifyPhoneNumberData(PhoneRequest phoneRequest) async {
    return dataSource.verifyPhoneNumberData(phoneRequest);
  }
}
