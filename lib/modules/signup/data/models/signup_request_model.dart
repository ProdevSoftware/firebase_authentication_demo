// To parse this JSON data, do
//
//     final signupRequest = signupRequestFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'signup_request_model.freezed.dart';

part 'signup_request_model.g.dart';

SignupRequest signupRequestFromJson(String str) =>
    SignupRequest.fromJson(json.decode(str));

String signupRequestToJson(SignupRequest data) => json.encode(data.toJson());

@freezed
class SignupRequest with _$SignupRequest {
  const factory SignupRequest({
    required String email,
    required String password,
  }) = _SignupRequest;

  factory SignupRequest.fromJson(Map<String, dynamic> json) =>
      _$SignupRequestFromJson(json);
}
