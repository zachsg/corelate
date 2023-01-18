import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../models/breathwork.dart';
import '../breathwork_configure_c.dart';

class BreathsPerRoundDropdownButtonWidget extends ConsumerWidget {
  const BreathsPerRoundDropdownButtonWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final breathsPerRounds = [15, 20, 25, 30, 35, 40];

    final breathwork =
        ref.watch(breathworkConfigureCProvider).activity.breathwork ??
            Breathwork();

    return DropdownButton(
      style: Theme.of(context)
          .textTheme
          .titleMedium
          ?.copyWith(color: Theme.of(context).colorScheme.primary),
      borderRadius: BorderRadius.circular(4.0),
      underline: const SizedBox(),
      alignment: AlignmentDirectional.centerEnd,
      icon: Padding(
        padding: const EdgeInsets.only(left: 4.0),
        child: Icon(
          Icons.unfold_more,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      value: breathwork.breathsPerRound,
      items: breathsPerRounds.map<DropdownMenuItem<int>>((int breathsPerRound) {
        return DropdownMenuItem<int>(
          value: breathsPerRound,
          child: Text('$breathsPerRound breaths'),
        );
      }).toList(),
      onChanged: (breathsPerRound) => ref
          .read(breathworkConfigureCProvider.notifier)
          .setBreathsPerRound(breathsPerRound ?? 30),
    );
  }
}
