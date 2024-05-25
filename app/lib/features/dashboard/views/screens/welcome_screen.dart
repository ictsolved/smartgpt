import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:smart_gpt/core/services/helpers/ui_helper.dart';
import 'package:smart_gpt/core/widgets/cdivider.dart';
import 'package:smart_gpt/core/widgets/gap.dart';
import 'package:smart_gpt/features/auth/services/auth_isar_service.dart';
import 'package:smart_gpt/features/dashboard/views/screens/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: SizedBox(
              height: mediaHeight(context) - kToolbarHeight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Column(
                    children: [
                      VGap(30),
                      Text(
                        'Welcome to SmartGPT',
                        style: TextStyle(
                          height: 1.2,
                          fontSize: 38,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      VGap(15),
                      Text(
                        'This official app is free, '
                        'syncs your history across devices, '
                        'and brings you the latest model '
                        'improvements from OpenAI.',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  const VGap(2),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Ionicons.search),
                      HGap(15),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'SmartGPT can be inaccurate',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'SmartGPT may provide inaccurate information '
                              'about people, places, or facts.',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // VGap(25),
                  const CDivider(),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Ionicons.lock_closed_outline),
                      HGap(15),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Don't share sensitive info",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Chats may be reviewed and used to train '
                              'our models. Learn about your choices.',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const CDivider(),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Ionicons.filter_circle_outline),
                      HGap(15),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Control you chat history',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Decide whether new chats on this device '
                              'will appear in your history and be used '
                              'to improve our systems.',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: mediaWidth(context),
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor:
                            WidgetStatePropertyAll(Color(0xffE6E6E6)),
                        foregroundColor: WidgetStatePropertyAll(Colors.black),
                      ),
                      onPressed: () async {
                        await AuthIsarService().saveOnboardStatus();
                        await Navigator.pushReplacement(
                          context,
                          MaterialPageRoute<void>(
                            builder: (context) => const HomeScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        'Continue',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
