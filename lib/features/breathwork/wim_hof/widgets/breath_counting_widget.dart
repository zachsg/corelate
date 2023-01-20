import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../wim_hof_c.dart';
import 'animated_circle_widget.dart';

class BreathCountingWidget extends ConsumerWidget {
  const BreathCountingWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final wimHof = ref.watch(wimHofCProvider);

    return Stack(
      children: [
        Positioned.fill(
          child: Align(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedCircleWidget(
                  size: MediaQuery.of(context).size.width / 1.3,
                  color:
                      Theme.of(context).colorScheme.secondary.withOpacity(0.2),
                ),
              ],
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Breath #',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    '${wimHof.currentBreath}',
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  Text(
                    'Breathe with the pacer',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontStyle: FontStyle.italic,
                          color: Theme.of(context)
                              .colorScheme
                              .onBackground
                              .withOpacity(0.5),
                        ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
