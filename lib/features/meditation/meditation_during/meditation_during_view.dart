import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:wakelock/wakelock.dart';

import '../../../helpers/strings.dart';
import '../../../models/meditation_type.dart';
import '../../bottom_navigation/bottom_navigation_view.dart';
import '../../widgets/xwidgets.dart';
import 'meditation_during.dart';
import 'widgets/xwidgets.dart';

class MeditationDuringView extends ConsumerWidget {
  const MeditationDuringView({super.key});

  static const routeName = 'meditation_during';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final meditation = ref.watch(meditationDuringProvider).meditation;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(meditatingLabel),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          meditation.type == MeditationType.openEnded
              ? const CountUpWidget()
              : CountDownWidget(
                  finished: () {
                    ref
                        .read(meditationDuringProvider.notifier)
                        .sessionStopped(true);
                    _showSessionCompleteDialog(ref, context);
                  },
                ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FilledButton(
                    onPressed: () {
                      Wakelock.disable();
                      ref
                          .read(meditationDuringProvider.notifier)
                          .sessionStopped(true);
                      _showSessionCompleteDialog(ref, context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 16,
                      ),
                      child: Text(meditation.type == MeditationType.openEnded
                          ? endLabel
                          : endEarlyLabel),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Wakelock.disable();
                      ref
                          .read(meditationDuringProvider.notifier)
                          .sessionStopped(true);
                      context.pop();
                    },
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

  Future<void> _playTone() async =>
      AudioPlayer().play(AssetSource('sounds/singing-bowl.mp3'));

  Future<void> _showSessionCompleteDialog(
      WidgetRef ref, BuildContext context) async {
    final meditation = ref.watch(meditationDuringProvider).meditation;
    final elapsed = meditation.elapsed;

    final minutes = elapsed / 60 > 0 ? elapsed ~/ 60 : 0;
    final seconds = minutes == 0 ? elapsed : elapsed - minutes * 60;

    var durationString = '';
    if (minutes == 0) {
      durationString = '$seconds seconds';
    } else if (seconds == 0) {
      durationString = '$minutes minutes';
    } else {
      durationString = '$minutes minutes and $seconds seconds';
    }

    var message = '';
    if (meditation.type == MeditationType.timed) {
      final goal = meditation.goal ?? 300;
      if (goal <= meditation.elapsed) {
        _playTone();

        message = 'Nice work! You completed your goal of'
            ' ${goal ~/ 60} minutes.';
      } else {
        final percentage = ((elapsed / goal).toDouble() * 100).toInt();
        message = 'Good effort. You completed $durationString of your'
            ' ${goal ~/ 60} minute goal ($percentage%).';
      }
    } else {
      message = 'You just meditated for $durationString.';
    }

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
                const Text('\n\nHow it go?'),
                RatingBarWidget(
                  onRatingChange: (rating) => ref
                      .read(meditationDuringProvider.notifier)
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
                ref.read(meditationDuringProvider.notifier).save();
                context.goNamed(BottomNavigationView.routeName);
              },
            ),
          ],
        );
      },
    );
  }
}
