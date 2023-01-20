import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:wakelock/wakelock.dart';

import '../../../helpers/strings.dart';
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

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(wimHofLabel),
      ),
      body: wimHof.isDone
          ? const SizedBox()
          : Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      'Round ${wimHof.currentRound}',
                      style: Theme.of(context).textTheme.titleLarge,
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

  Future<void> _showSessionCompleteDialog(
      WidgetRef ref, BuildContext context) async {
    final wimHof = ref.watch(wimHofCProvider);

    final elapsed = wimHof.holdSeconds.first;

    final minutes = elapsed / 60 > 0 ? elapsed ~/ 60 : 0;
    final seconds = minutes == 0 ? elapsed : elapsed - minutes * 60;

    var durationString = 'this is a duration $minutes : $seconds';

    var message = 'this is a message';

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
                Text(durationString),
                const Text('\n\nHow it go?'),
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
