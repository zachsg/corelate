import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../meditation_configure_c.dart';

class MeditationGoalDropdownButtonWidget extends ConsumerWidget {
  const MeditationGoalDropdownButtonWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goals = [300, 600, 900, 1200, 1800, 2700, 3600];

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
      value: ref.watch(meditationConfigureCProvider).meditation.goal,
      items: goals.map<DropdownMenuItem<int>>((int goal) {
        String goalLabel;
        switch (goal) {
          case 300:
            goalLabel = '5 minutes';
            break;
          case 600:
            goalLabel = '10 minutes';
            break;
          case 900:
            goalLabel = '15 minutes';
            break;
          case 1200:
            goalLabel = '20 minutes';
            break;
          case 1800:
            goalLabel = '30 minutes';
            break;
          case 2700:
            goalLabel = '45 minutes';
            break;
          case 3600:
            goalLabel = '1 hour';
            break;
          default:
            goalLabel = '';
        }

        return DropdownMenuItem<int>(
          value: goal,
          child: Text(goalLabel),
        );
      }).toList(),
      onChanged: (goal) =>
          ref.read(meditationConfigureCProvider.notifier).setGoal(goal!),
    );
  }
}
