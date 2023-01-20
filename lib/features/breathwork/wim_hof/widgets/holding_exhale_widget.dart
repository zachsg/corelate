import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../wim_hof_c.dart';

class HoldingExhaleWidget extends ConsumerStatefulWidget {
  const HoldingExhaleWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _HoldingExhaleWidgetState();
}

class _HoldingExhaleWidgetState extends ConsumerState<HoldingExhaleWidget> {
  late Timer _timer;
  late Stopwatch _stopwatch;

  @override
  void initState() {
    _stopwatch = Stopwatch()..start();

    var elapsed = 0;

    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (ref.watch(wimHofCProvider).isHoldingInhale) {
        _stopwatch
          ..stop()
          ..reset();
      } else {
        elapsed = _stopwatch.elapsed.inSeconds;
      }

      ref.read(wimHofCProvider.notifier).setHoldSecondsCurrentRount(elapsed);
    });

    super.initState();
  }

  @override
  void dispose() {
    _stopwatch
      ..stop()
      ..reset();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final wimHof = ref.watch(wimHofCProvider);
    final elapsed = wimHof.holdSecondsCurrentRound;

    final minutes = elapsed / 60 > 0 ? elapsed ~/ 60 : 0;
    final seconds = minutes == 0 ? elapsed : elapsed - minutes * 60;
    final secondsText = seconds < 10 ? '0$seconds' : '$seconds';

    return GestureDetector(
      onTap: () {
        _stopwatch
          ..stop()
          ..reset();
        ref.read(wimHofCProvider.notifier).setHoldingExhale(false);
      },
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Breath hold',
              style: Theme.of(context).textTheme.displaySmall,
            ),
            Text(
              'After fully exhaling',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontStyle: FontStyle.italic,
                    color: Theme.of(context)
                        .colorScheme
                        .onBackground
                        .withOpacity(0.5),
                  ),
            ),
            const SizedBox(height: 16),
            Text(
              '$minutes:$secondsText',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            Text(
              'Tap when you need to breathe',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Theme.of(context).colorScheme.primary),
            ),
          ],
        ),
      ),
    );
  }
}
