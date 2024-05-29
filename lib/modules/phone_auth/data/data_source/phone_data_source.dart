import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_authentication_demo/modules/phone_auth/data/models/phone_request_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'phone_data_source_impl.dart';

final phoneDataSourceProvider = Provider((ref) => PhoneDataSourceImpl());

abstract class PhoneDataSource {
  Future<void> verifyPhoneNumberData(PhoneRequest phoneRequest);
}
