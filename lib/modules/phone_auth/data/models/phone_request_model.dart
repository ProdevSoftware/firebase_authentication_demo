// To parse this JSON data, do
//
//     final phoneRequest = phoneRequestFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'phone_request_model.freezed.dart';

part 'phone_request_model.g.dart';

PhoneRequest phoneRequestFromJson(String str) =>
    PhoneRequest.fromJson(json.decode(str));

String phoneRequestToJson(PhoneRequest data) => json.encode(data.toJson());

@freezed
class PhoneRequest with _$PhoneRequest {
  const factory PhoneRequest({
    required String phone,
  }) = _PhoneRequest;

  factory PhoneRequest.fromJson(Map<String, dynamic> json) =>
      _$PhoneRequestFromJson(json);
}
