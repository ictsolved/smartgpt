import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smart_gpt/core/constants/ui_colors.dart';
import 'package:smart_gpt/core/providers/loader_provider.dart';

class CLoader extends ConsumerWidget {
  const CLoader({
    this.child,
    this.independent = false,
    super.key,
  });

  final Widget? child;

  /// Control whether loader should be shown indpendent of the provider.
  /// This is useful when we need to show the loader in general use cases
  /// without the need or being dependent on the provider.
  /// User should take responsiblity to turn of the independent loader.
  final bool independent;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loaders = ref.watch(loaderStateProvider);

    return Stack(
      children: [
        if (child != null) child!,
        if (loaders.isNotEmpty || independent)
          // If button has loader, block the touch events only.
          // We prefer this approach over IgnorePointer because
          // it does not need extra handling like enabling pointer,
          // compatibility with global loader, dio.hideLoader extension, etc.

          ColoredBox(
            color: UIColors.white.withOpacity(0.1),
            child: const Center(
              child: RefreshProgressIndicator(),
            ),
          ),
      ],
    );
  }
}
