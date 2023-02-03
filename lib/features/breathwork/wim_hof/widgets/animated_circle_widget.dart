import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../breathwork_configure/breathwork_configure_c.dart';
import '../wim_hof_c.dart';

class AnimatedCircleWidget extends ConsumerStatefulWidget {
  const AnimatedCircleWidget({
    super.key,
    required this.size,
    required this.color,
  });

  final double size;
  final Color color;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AnimatedCircleWidgetState();
}

class _AnimatedCircleWidgetState extends ConsumerState<AnimatedCircleWidget> {
  late Timer _timer;
  int _count = 0;

  double _width = 0.0;
  double _height = 0.0;

  @override
  void initState() {
    final breathGoal =
        ref.read(breathworkConfigureCProvider).breathwork.breathsPerRound;

    _timer = Timer.periodic(const Duration(milliseconds: 1500), (_) {
      if (_width == 0.0 && _height == 0.0) {
        setState(() {
          _width = widget.size;
          _height = widget.size;
        });
      } else {
        setState(() {
          _width = 0.0;
          _height = 0.0;
        });
      }

      if (_count % 2 == 0) {
        ref.read(wimHofCProvider.notifier).incrementBreath();
      }

      _count++;
      if (_count > breathGoal * 2) {
        _timer.cancel();
        ref.read(wimHofCProvider.notifier).setHoldingExhale(true);
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
    return AnimatedContainer(
      duration: const Duration(milliseconds: 1500),
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
    );
  }
}
