import 'package:flutter/material.dart';
import 'package:smart_gpt/core/widgets/gap.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({
    required this.backgroundColor,
    required this.foregroundColor,
    required this.icon,
    required this.text,
    required this.onPressed,
    super.key,
  });

  final Color backgroundColor;
  final Color foregroundColor;
  final Widget icon;
  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(backgroundColor),
        foregroundColor: WidgetStatePropertyAll(foregroundColor),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          const HGap(7),
          Text(
            text,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
