import 'package:flutter/material.dart';
import 'package:smart_gpt/core/services/helpers/ui_helper.dart';
import 'package:smart_gpt/features/auth/services/auth_isar_service.dart';
import 'package:smart_gpt/features/auth/views/screens/login_screen.dart';
import 'package:smart_gpt/features/dashboard/views/screens/home_screen.dart';
import 'package:smart_gpt/features/dashboard/views/screens/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> _checkAndNavigate(BuildContext context) async {
    final user = await AuthIsarService().getUserCollection();
    if (user?.tokens?.access == null) {
      await Navigator.pushReplacement(
        context,
        MaterialPageRoute<void>(
          builder: (context) => const LoginScreen(),
        ),
      );
      return;
    }

    final onboarded = await AuthIsarService().getOnboardingStatus();
    if (!onboarded) {
      await Navigator.pushReplacement(
        context,
        MaterialPageRoute<void>(
          builder: (context) => const WelcomeScreen(),
        ),
      );
      return;
    }

    await Navigator.pushReplacement(
      context,
      MaterialPageRoute<void>(
        builder: (context) => const HomeScreen(),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _checkAndNavigate(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/logo.png',
          width: mediaWidth(context) / 3,
        ),
      ),
    );
  }
}
