import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:wakelock/wakelock.dart';

import '../../../data/provider.dart';
import '../../../helpers/strings.dart';
import '../../../models/meditation_type.dart';
import '../../bottom_navigation/bottom_navigation_view.dart';
import 'meditation_during_c.dart';
import 'widgets/xwidget.dart';

class MeditationDuringView extends ConsumerWidget {
  const MeditationDuringView({super.key});

  static const routeName = 'meditation_during';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(meditationTitle),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ref.watch(meditationDuringCProvider).meditation.type ==
                  MeditationType.openEnded
              ? const CountUpWidget()
              : CountDownWidget(finished: () {
                  ref.read(meditationDuringCProvider.notifier).save();
                  _showSessionCompleteDialog(ref, context);
                }),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      ref.read(meditationDuringCProvider.notifier).save();
                      _showSessionCompleteDialog(ref, context);
                    },
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 16,
                      ),
                      child: Text(endEarlyLabel),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: context.pop,
                    child: const Text(cancelLabel),
                  ),
                ],
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
    final elapsed = ref.watch(meditationDuringCProvider).meditation.elapsed;

    final minutes = elapsed / 60 > 0 ? elapsed ~/ 60 : 0;
    final seconds = minutes == 0 ? elapsed : elapsed - minutes * 60;
    final secondsText = seconds < 10 ? '0$seconds' : '$seconds';

    final meditation = ref.watch(meditationDuringCProvider).meditation;
    var message = '';

    if (meditation.type == MeditationType.timed) {
      if (meditation.goal! <= meditation.elapsed) {
        message =
            'Nice work! You completed your goal of ${meditation.goal! ~/ 60} minutes.';
      } else {
        message =
            'Good effort. You completed $minutes:$secondsText of your ${meditation.goal! ~/ 60} minute goal.';
      }
    } else {
      message = 'You just meditated for $minutes:$secondsText.';
    }

    return showDialog(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Session Complete'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text(message),
              ],
            ),
          ),
          actions: [
            TextButton(
              child: const Text('Go Home'),
              onPressed: () {
                Wakelock.disable();
                Navigator.of(context).pop();
                context.goNamed(BottomNavigationView.routeName);
              },
            ),
          ],
        );
      },
    );
  }
}
