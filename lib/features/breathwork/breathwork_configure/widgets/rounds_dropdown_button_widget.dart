import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../models/breathwork.dart';
import '../breathwork_configure_c.dart';

class RoundsDropdownButtonWidget extends ConsumerWidget {
  const RoundsDropdownButtonWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rounds = [2, 3, 4, 5, 6, 7, 8, 9, 10];

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
      value: breathwork.rounds,
      items: rounds.map<DropdownMenuItem<int>>((int round) {
        return DropdownMenuItem<int>(
          value: round,
          child: Text('$round rounds'),
        );
      }).toList(),
      onChanged: (rounds) => ref
          .read(breathworkConfigureCProvider.notifier)
          .setRounds(rounds ?? 4),
    );
  }
}
