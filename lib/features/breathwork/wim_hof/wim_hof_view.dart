import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:wakelock/wakelock.dart';

import '../../../helpers/strings.dart';
import '../../../models/breathwork.dart';
import '../../../models/breathwork_type.dart';
import '../../bottom_navigation/bottom_navigation_view.dart';
import '../../widgets/xwidgets.dart';
import '../breathwork_configure/breathwork_configure_c.dart';
import 'widgets/xwidgets.dart';
import 'wim_hof_c.dart';

class WimHofView extends ConsumerWidget {
  const WimHofView({super.key});

  static const routeName = 'wim_hof';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final wimHof = ref.watch(wimHofCProvider);
    final breathworkConfig = ref.watch(breathworkConfigureCProvider);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(wimHofLabel),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: IconButton(
              icon: Icon(
                Icons.dangerous_outlined,
                size: 32,
                color: Theme.of(context).colorScheme.primary,
              ),
              onPressed: () {
                Wakelock.disable();
                final wimHof = ref.read(wimHofCProvider);

                if (wimHof.currentRound != 1) {
                  ref.read(wimHofCProvider.notifier).markDone();
                  _showSessionCompleteDialog(ref, context);
                } else {
                  context.pop();
                }
              },
            ),
          ),
        ],
      ),
      body: wimHof.isDone
          ? const SizedBox()
          : Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          'Round ${wimHof.currentRound}',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Text(
                          ' of ${breathworkConfig.breathwork.rounds}',
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width / 1.3,
                      child: wimHof.isHoldingExhale
                          ? const HoldingExhaleWidget()
                          : wimHof.isHoldingInhale
                              ? HoldingInhaleWidget(
                                  finished: () =>
                                      _showSessionCompleteDialog(ref, context),
                                )
                              : const BreathCountingWidget(),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 4),
              ],
            ),
    );
  }

  Future<void> _showSessionCompleteDialog(
      WidgetRef ref, BuildContext context) async {
    final wimHof = ref.watch(wimHofCProvider);
    final breathwork = ref.watch(breathworkConfigureCProvider).breathwork;

    var message = '';

    final rounds = wimHof.holdSeconds.length;
    final breathsPerRound = breathwork.breathsPerRound;

    message =
        'You did $rounds ${rounds == 1 ? 'round' : 'rounds'} of the Wim Hof Method'
        ' ($breathsPerRound breaths per round).\n\nIndividual breath holds:\n';

    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Session Complete'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text(message),
                if (breathwork.type == BreathworkType.wimHof)
                  SizedBox(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    child: WimHofBarChartWidget(
                      breathwork: Breathwork(
                        date: breathwork.date,
                        holdSecondsPerRound: wimHof.holdSeconds,
                      ),
                    ),
                  ),
                const Text('\nHow it go?'),
                RatingBarWidget(
                  onRatingChange: (rating) => ref
                      .read(breathworkConfigureCProvider.notifier)
                      .setRating(rating),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              child: const Text('Go Home'),
              onPressed: () {
                Wakelock.disable();
                Navigator.of(context).pop();
                ref.read(breathworkConfigureCProvider.notifier).save();
                context.goNamed(BottomNavigationView.routeName);
              },
            ),
          ],
        );
      },
    );
  }
}
