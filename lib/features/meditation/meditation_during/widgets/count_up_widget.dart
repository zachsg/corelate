import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../models/meditation.dart';
import '../meditation_during_c.dart';

class CountUpWidget extends ConsumerStatefulWidget {
  const CountUpWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CountUpWidgetState();
}

class _CountUpWidgetState extends ConsumerState<CountUpWidget> {
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

      if (ref.read(meditationDuringCProvider).sessionStopped) {
        _stopwatch
          ..stop()
          ..reset();
      }
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
    final meditation =
        ref.watch(meditationDuringCProvider).activity.meditation ??
            Meditation();
    final elapsed = meditation.elapsed;

    final minutes = elapsed / 60 > 0 ? elapsed ~/ 60 : 0;
    final seconds = minutes == 0 ? elapsed : elapsed - minutes * 60;
    final secondsText = seconds < 10 ? '0$seconds' : '$seconds';

    return Text(
      '$minutes:$secondsText',
      style: Theme.of(context).textTheme.displayLarge,
    );
  }
}
