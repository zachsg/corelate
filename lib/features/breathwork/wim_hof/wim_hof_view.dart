import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../helpers/strings.dart';
import 'animated_circle_widget.dart';
import 'wim_hof_c.dart';

class WimHofView extends ConsumerWidget {
  const WimHofView({super.key});

  static const routeName = 'wim_hof';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final wimHof = ref.watch(wimHofCProvider);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(wimHofLabel),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(
                'Round ${wimHof.currentRound}',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Stack(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.width / 1.3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AnimatedCircleWidget(
                          size: MediaQuery.of(context).size.width / 1.3,
                          color: Theme.of(context)
                              .colorScheme
                              .secondary
                              .withOpacity(0.2),
                        ),
                      ],
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      child: Text(
                        '${wimHof.currentBreath}',
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              FilledButton(
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 16,
                  ),
                  child: Text(endEarlyLabel),
                ),
              ),
              const SizedBox(height: 12.0),
              TextButton(
                onPressed: () {
                  // TODO: Do any cleanup to cancel session
                  context.pop();
                },
                child: const Text(cancelLabel),
              ),
            ],
          ),
          const SizedBox(),
        ],
      ),
    );
  }
}
