import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../breathwork_configure/breathwork_configure_c.dart';
import '../wim_hof_c.dart';

class HoldingInhaleWidget extends ConsumerStatefulWidget {
  const HoldingInhaleWidget({super.key, required this.finished});

  final VoidCallback finished;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _HoldingInhaleWidgetState();
}

class _HoldingInhaleWidgetState extends ConsumerState<HoldingInhaleWidget> {
  late Timer _timer;
  int _count = 0;
  int _elapsed = 15;

  @override
  void initState() {
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      _count++;

      if (_count > 1) {
        setState(() => _elapsed--);
      }

      if (_elapsed == 0) {
        _timer.cancel();
        ref.read(wimHofCProvider.notifier).incrementRound();

        final roundsGoal = ref
                .watch(breathworkConfigureCProvider)
                .activity
                .breathwork
                ?.rounds ??
            3;

        if (ref.watch(wimHofCProvider).currentRound > roundsGoal) {
          ref.read(wimHofCProvider.notifier).markDone();
          widget.finished();
        }
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final minutes = _elapsed / 60 > 0 ? _elapsed ~/ 60 : 0;
    final seconds = minutes == 0 ? _elapsed : _elapsed - minutes * 60;
    final secondsText = seconds < 10 ? '0$seconds' : '$seconds';

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Breathe in & hold',
            style: Theme.of(context).textTheme.displaySmall,
          ),
          const SizedBox(height: 16),
          Text(
            '$minutes:$secondsText',
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ],
      ),
    );
  }
}
