import 'package:flutter/material.dart';
import 'package:smart_gpt/core/services/helpers/ui_helper.dart';
import 'package:smart_gpt/features/auth/services/auth_isar_service.dart';
import 'package:smart_gpt/features/auth/views/screens/login_screen.dart';

class HomePopupButton extends StatelessWidget {
  const HomePopupButton({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      onSelected: (item) async {
        await AuthIsarService().logout();
        await Future<void>.delayed(const Duration(milliseconds: 500));
        await Navigator.of(currentContext).pushAndRemoveUntil(
          MaterialPageRoute<void>(
            builder: (context) => const LoginScreen(),
          ),
          (Route<dynamic> route) => false,
        );
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        const PopupMenuItem<String>(
          value: 'logout',
          child: Text(
            'Logout',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
