import 'dart:math';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ionicons/ionicons.dart';
import 'package:smart_gpt/core/constants/ui_colors.dart';
import 'package:smart_gpt/core/models/app_environment.dart';
import 'package:smart_gpt/core/providers/loader_provider.dart';
import 'package:smart_gpt/core/services/helpers/ui_helper.dart';
import 'package:smart_gpt/core/widgets/calert_dialog.dart';
import 'package:smart_gpt/core/widgets/cdivider.dart';
import 'package:smart_gpt/core/widgets/gap.dart';
import 'package:smart_gpt/features/auth/models/login.dart';
import 'package:smart_gpt/features/auth/providers/auth_provider.dart';
import 'package:smart_gpt/features/auth/services/auth_isar_service.dart';
import 'package:smart_gpt/features/auth/views/widgets/login_button_widget.dart';
import 'package:smart_gpt/features/dashboard/views/screens/home_screen.dart';
import 'package:smart_gpt/features/dashboard/views/screens/welcome_screen.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  Color backgroundColor = Colors.blue;

  final auth0 = Auth0(
    AppEnvironment.auth0Domain,
    AppEnvironment.auth0ClientId,
  );

  final List<String> animatingText = [
    "Let's create",
    "Let's brainstrom",
    "Let's go",
    'SmartGPT',
    "Let's explore",
    "Let's collaborate",
    "Let's invent",
    'SmartGPT',
    "Let's design",
    "Let's chit-chat",
    "Let's discover",
    'SmartGPT',
  ];

  Future<void> login() async {
    try {
      // Auth0
      ref.read(loaderStateProvider.notifier).showLoader();
      final credentials = await auth0.webAuthentication().login(
            useHTTPS: true,
            audience: AppEnvironment.auth0Audience,
            idTokenValidationConfig: const IdTokenValidationConfig(
              issuer: AppEnvironment.auth0Issuer,
            ),
          );
      ref.read(loaderStateProvider.notifier).hideLoader();

      // Login
      await ref.read(
        loginProvider(
          LoginRequest(
            accessToken: credentials.accessToken,
            idToken: credentials.idToken,
          ),
        ).future,
      );

      // Navigate
      final onboarded = await AuthIsarService().getOnboardingStatus();
      if (onboarded) {
        await Navigator.pushReplacement(
          context,
          MaterialPageRoute<void>(
            builder: (context) => const HomeScreen(),
          ),
        );
      } else {
        await Navigator.pushReplacement(
          context,
          MaterialPageRoute<void>(
            builder: (context) => const WelcomeScreen(),
          ),
        );
      }
    } catch (e) {
      ref.read(loaderStateProvider.notifier).hideLoader();
      await cAlertDialog<void>(
        context: currentContext,
        content: const Text('Login Failed'),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: AnimatedTextKit(
                repeatForever: true,
                onNext: (p0, p1) {
                  setState(() {
                    backgroundColor = Colors
                        .primaries[Random().nextInt(Colors.primaries.length)];
                  });
                },
                animatedTexts: animatingText.map((text) {
                  return TypewriterAnimatedText(
                    text,
                    textStyle: const TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                    ),
                    cursor: '●',
                    textAlign: TextAlign.center,
                  );
                }).toList(),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 22),
            width: mediaWidth(context),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
              color: UIColors.backgroundPrimary,
            ),
            child: Column(
              children: [
                LoginButtonWidget(
                  backgroundColor: const Color(0xffE6E6E6),
                  foregroundColor: Colors.black,
                  onPressed: () {},
                  icon: const Icon(Ionicons.logo_google),
                  text: 'Continue with Google',
                ),
                const VGap(10),
                LoginButtonWidget(
                  backgroundColor: const Color(0xff2f2f2f),
                  foregroundColor: Colors.white,
                  onPressed: () {},
                  icon: const Icon(Icons.email_outlined),
                  text: 'Sign up with email',
                ),
                const VGap(12),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: CDivider(),
                ),
                const VGap(12),
                OutlinedButton(
                  onPressed: () async {
                    await login();
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Log in',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
