import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smart_gpt/core/services/helpers/dio_extension.dart';
import 'package:smart_gpt/features/auth/models/login.dart';
import 'package:smart_gpt/features/auth/services/auth_isar_service.dart';
import 'package:smart_gpt/features/auth/services/auth_service.dart';

part 'auth_provider.g.dart';

@riverpod
AuthService authService(AuthServiceRef ref) => AuthService(ref.client);

@riverpod
Future<LoginResponse> login(LoginRef ref, LoginRequest loginRequest) {
  return ref.watch(authServiceProvider).login(loginRequest);
}

final userDetailProvider = FutureProvider<LoginResponse?>((ref) async {
  return AuthIsarService().getUserCollection();
});
