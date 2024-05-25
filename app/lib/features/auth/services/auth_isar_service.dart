import 'package:smart_gpt/core/services/helpers/isar_helper.dart';
import 'package:smart_gpt/features/auth/models/login.dart';
import 'package:smart_gpt/features/auth/models/user_onboarding.dart';

class AuthIsarService {
  Future<void> saveUserCollection(LoginResponse loginResponse) async {
    await isar.writeTxn(() async {
      await isar.loginResponses.put(loginResponse);
    });
  }

  Future<LoginResponse?> getUserCollection() {
    return isar.loginResponses.get(1);
  }

  Future<void> saveOnboardStatus({bool status = true}) async {
    await isar.writeTxn(() async {
      await isar.userOnBoardings.put(UserOnBoarding(onboarded: status));
    });
  }

  Future<bool> getOnboardingStatus() async {
    final onBoarding = await isar.userOnBoardings.get(1);
    return onBoarding?.onboarded ?? false;
  }

  Future<void> logout() async {
    await isar.writeTxn(() async {
      await isar.loginResponses.clear();
    });
  }
}
