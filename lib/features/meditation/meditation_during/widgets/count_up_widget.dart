import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../meditation_during.dart';

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

    var elapsed = 0;

    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (ref.watch(meditationDuringProvider).sessionStopped) {
        _stopwatch
          ..stop()
          ..reset();
      } else {
        elapsed = _stopwatch.elapsed.inSeconds;
      }

      ref.read(meditationDuringProvider.notifier).setElapsed(elapsed);
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
    final meditation = ref.watch(meditationDuringProvider).meditation;
    final elapsed = meditation.elapsed;

    final minutes = elapsed / 60 > 0 ? elapsed ~/ 60 : 0;
    final seconds = minutes == 0 ? elapsed : elapsed - minutes * 60;
    final secondsText = seconds < 10 ? '0$seconds' : '$seconds';

    final isStopped = ref.watch(meditationDuringProvider).sessionStopped;

    return isStopped
        ? const SizedBox()
        : Text(
            '$minutes:$secondsText',
            style: Theme.of(context).textTheme.displayLarge,
          );
  }
}
