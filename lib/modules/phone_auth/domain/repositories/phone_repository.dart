import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/data_source/phone_data_source.dart';
import '../../data/models/phone_request_model.dart';
import '../../data/repositories/phone_repository_impl.dart';

final phoneRepositoryProvider = Provider(
  (ref) => PhoneRepositoryImpl(
    dataSource: ref.read(phoneDataSourceProvider),
  ),
);

abstract class PhoneRepository {
  Future<void> verifyPhoneNumberData(
    PhoneRequest phoneRequest,
  );
}
