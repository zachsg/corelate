import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:wakelock/wakelock.dart';

import '../../../helpers/strings.dart';
import '../../bottom_navigation/bottom_navigation_view.dart';
import '../../widgets/rating_bar_widget.dart';
import '../breathwork_configure/breathwork_configure_c.dart';
import 'four_7_8_c.dart';
import 'widgets/animated_rounds_widget.dart';

class Four78View extends ConsumerWidget {
  const Four78View({super.key});

  static const routeName = 'four_7_8';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final four78 = ref.watch(four78CProvider);
    final breathworkConfig = ref.watch(breathworkConfigureCProvider);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(four78Label),
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

                final four78 = ref.read(four78CProvider);

                if (four78.currentRound != 1) {
                  ref.read(four78CProvider.notifier).markDone();
                  _showSessionCompleteDialog(ref, context);
                } else {
                  context.pop();
                }
              },
            ),
          ),
        ],
      ),
      body: four78.isDone
          ? const SizedBox()
          : Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          'Round ${four78.currentRound}',
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
                      child: AnimatedRoundsWidget(
                        size: MediaQuery.of(context).size.width / 1.3,
                        color: Theme.of(context)
                            .colorScheme
                            .secondary
                            .withOpacity(0.2),
                        onFinished: () =>
                            _showSessionCompleteDialog(ref, context),
                      ),
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
    final four78 = ref.watch(four78CProvider);

    var message = '';
    final rounds = four78.currentRound;

    message = 'You did $rounds ${rounds == 1 ? 'round' : 'rounds'} of the 4-7-8'
        ' breathing technique.';

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
