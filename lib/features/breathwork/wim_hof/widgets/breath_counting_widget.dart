import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../breathwork_setup/breathwork_setup.dart';
import '../wim_hof.dart';
import 'animated_circle_widget.dart';

class BreathCountingWidget extends ConsumerWidget {
  const BreathCountingWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final wimHof = ref.watch(wimHofProvider);
    final breathwork = ref.watch(breathworkSetupProvider).breathwork;

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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        wimHof.currentBreath == 0 ? '' : 'Breathe ',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      SizedBox(
                        width: 58,
                        child: Text(
                          wimHof.currentBreath == 0
                              ? ''
                              : wimHof.isInhaling
                                  ? 'in'
                                  : 'out',
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '${wimHof.currentBreath == 0 ? '' : wimHof.currentBreath}',
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      Text(
                        wimHof.currentBreath == 0
                            ? ''
                            : ' of ${breathwork.breathsPerRound}',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                  Text(
                    'Breathe with the pacer...',
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
