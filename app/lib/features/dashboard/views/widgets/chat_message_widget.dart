import 'package:flutter/material.dart';
import 'package:smart_gpt/core/widgets/gap.dart';

class ChatMessage extends StatelessWidget {
  const ChatMessage({
    required this.user,
    required this.message,
    required this.icon,
    super.key,
  });

  final String user;
  final String message;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          icon,
          const HGap(10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(user),
                const VGap(2),
                Text(message, style: const TextStyle(fontSize: 15)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
