import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'login.freezed.dart';
part 'login.g.dart';

@freezed
class LoginRequest with _$LoginRequest {
  const factory LoginRequest({
    required String idToken,
    required String accessToken,
  }) = _LoginRequest;

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);
}

@freezed
@Collection(ignore: {'copyWith'})
class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    User? user,
    Tokens? tokens,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  const LoginResponse._();

  Id get id => 1;
}

@freezed
@Embedded(ignore: {'copyWith'})
class User with _$User {
  const factory User({
    String? name,
    String? email,
    String? role,
    bool? isEmailVerified,
    String? id,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
@Embedded(ignore: {'copyWith'})
class Tokens with _$Tokens {
  const factory Tokens({
    Access? access,
    Refresh? refresh,
  }) = _Tokens;

  factory Tokens.fromJson(Map<String, dynamic> json) => _$TokensFromJson(json);
}

@freezed
@Embedded(ignore: {'copyWith'})
class Access with _$Access {
  const factory Access({
    String? token,
    String? expires,
  }) = _Access;

  factory Access.fromJson(Map<String, dynamic> json) => _$AccessFromJson(json);
}

@freezed
@Embedded(ignore: {'copyWith'})
class Refresh with _$Refresh {
  const factory Refresh({
    String? token,
    String? expires,
  }) = _Refresh;

  factory Refresh.fromJson(Map<String, dynamic> json) =>
      _$RefreshFromJson(json);
}
