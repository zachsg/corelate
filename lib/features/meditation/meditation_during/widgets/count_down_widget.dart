import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../meditation_during_c.dart';
import 'circle.dart';

class CountDownWidget extends ConsumerStatefulWidget {
  const CountDownWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CountDownWidgetState();
}

class _CountDownWidgetState extends ConsumerState<CountDownWidget> {
  late Timer _timer;
  late Stopwatch _stopwatch;

  @override
  void initState() {
    _stopwatch = Stopwatch()..start();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      final duration = _stopwatch.elapsed;
      ref
          .read(meditationDuringCProvider.notifier)
          .setElapsed(duration.inSeconds);
    });

    super.initState();
  }

  @override
  void dispose() {
    _stopwatch.stop();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final meditation = ref.watch(meditationDuringCProvider).meditation;
    final duration = (meditation.goal ?? 0) * 1000;
    final elapsed = meditation.elapsed;
    final goal = meditation.goal ?? 600;

    final goneBy = goal - elapsed;

    if (goal <= elapsed) {
      _stopwatch.stop();
      _timer.cancel();
    }

    final minutes = goneBy / 60 > 0 ? goneBy ~/ 60 : 0;
    final seconds = minutes == 0 ? goneBy : goneBy - minutes * 60;
    final secondsText = seconds < 10 ? '0$seconds' : '$seconds';

    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Circle(
            color: Theme.of(context).colorScheme.inversePrimary,
            milliseconds: 0,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Circle(
            color: Theme.of(context).colorScheme.primary,
            milliseconds: duration,
          ),
        ),
        Positioned.fill(
          child: Align(
            child: Text(
              '$minutes:$secondsText',
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
        ),
      ],
    );
  }
}
