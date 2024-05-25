import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smart_gpt/core/constants/app_theme.dart';
import 'package:smart_gpt/core/services/helpers/isar_helper.dart';
import 'package:smart_gpt/core/services/helpers/log_helper.dart';
import 'package:smart_gpt/core/services/helpers/ui_helper.dart';
import 'package:smart_gpt/core/widgets/cloader.dart';
import 'package:smart_gpt/features/dashboard/views/screens/splash_screen.dart';

Future<void> main() async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      await IsarHelper().open();

      await SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);

      ErrorWidget.builder = (details) {
        if (kDebugMode) {
          return ErrorWidget(details.exception);
        }

        return const Scaffold(body: Center(child: Text('Fatal Error')));
      };

      runApp(const ProviderScope(child: SmartGPTApp()));
    },
    (error, stack) {
      if (kDebugMode) {
        printLog(error);
        printLog(stack);
        return;
      }
    },
  );
}

class SmartGPTApp extends ConsumerStatefulWidget {
  const SmartGPTApp({super.key});

  @override
  ConsumerState<SmartGPTApp> createState() => _SmartGPTAppState();
}

class _SmartGPTAppState extends ConsumerState<SmartGPTApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart GPT',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.dark,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.dark,
      navigatorKey: navigatorKey,
      home: const SplashScreen(),
      builder: (context, child) => CLoader(child: child),
    );
  }
}
