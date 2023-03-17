import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vibration/vibration.dart';

import '../../breathwork_setup/breathwork_setup.dart';
import '../four_7_8_c.dart';

class AnimatedRoundsWidget extends ConsumerStatefulWidget {
  const AnimatedRoundsWidget({
    super.key,
    required this.size,
    required this.color,
    required this.onFinished,
  });

  final double size;
  final Color color;
  final VoidCallback onFinished;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AnimatedRoundsWidgetState();
}

class _AnimatedRoundsWidgetState extends ConsumerState<AnimatedRoundsWidget> {
  late Timer _timer;
  double _width = 0.0;
  double _height = 0.0;
  int _count = 0;
  int _displayCount = 0;
  String _breathText = 'Inhale';
  bool _canVibrate = false;

  Future<void> _checkForVibrate() async {
    _canVibrate = await Vibration.hasVibrator() ?? false;
  }

  @override
  void initState() {
    _checkForVibrate();

    _timer = Timer.periodic(const Duration(milliseconds: 650), (_) {
      if (_count == 19) {
        _count = 0;
        ref.read(four78CProvider.notifier).incrementRound();
      }

      if (ref.watch(four78CProvider).currentRound >
          ref.watch(breathworkSetupProvider).breathwork.rounds) {
        _timer.cancel();
        ref.read(four78CProvider.notifier).markDone();
        widget.onFinished();
      }

      if (_count >= 0 && _count < 4) {
        // Inhale
        if (_count == 0) {
          setState(() {
            _breathText = 'Inhale';
            _displayCount = 0;
            _width = widget.size;
            _height = widget.size;
          });

          if (_canVibrate) {
            Vibration.vibrate();
          }
        }
      } else if (_count >= 4 && _count < 11) {
        // Hold
        if (_count == 4) {
          setState(() {
            _breathText = 'Hold';
            _displayCount = 0;
          });

          if (_canVibrate) {
            Vibration.vibrate();
          }
        }
      } else if (_count >= 11 && _count < 19) {
        // Exhale
        if (_count == 11) {
          setState(() {
            _breathText = 'Exhale';
            _displayCount = 0;
            _width = 0.0;
            _height = 0.0;
          });

          if (_canVibrate) {
            Vibration.vibrate();
          }
        }
      }

      setState(() => _displayCount += 1);

      _count += 1;
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
    const inhaleDuration = Duration(milliseconds: 2600);
    const exhaleDuration = Duration(milliseconds: 5200);

    return Stack(
      children: [
        Positioned(
          child: Align(
            child: AnimatedContainer(
              duration: _count < 4 ? inhaleDuration : exhaleDuration,
              width: _width,
              height: _height,
              child: Container(
                width: _width,
                height: _height,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: widget.color,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          child: Align(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  _breathText,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                Text(
                  '$_displayCount',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
