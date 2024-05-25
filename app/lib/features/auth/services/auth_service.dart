import 'package:dio/dio.dart';
import 'package:smart_gpt/core/constants/repository_constant.dart';
import 'package:smart_gpt/core/services/typedefs.dart';
import 'package:smart_gpt/features/auth/models/login.dart';
import 'package:smart_gpt/features/auth/services/auth_isar_service.dart';

class AuthService {
  const AuthService(this.dio);

  final Dio dio;

  Future<LoginResponse> login(LoginRequest loginRequest) async {
    final response = await dio.post<JsonMap>(
      '$apiBaseUrl/auth/login',
      data: loginRequest.toJson(),
    );
    final loginResponse = LoginResponse.fromJson(response.data!);

    await AuthIsarService().saveUserCollection(loginResponse);

    return loginResponse;
  }
}
