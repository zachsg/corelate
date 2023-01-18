import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../helpers/strings.dart';
import '../../../../models/breathwork.dart';
import '../../../../models/breathwork_type.dart';
import '../breathwork_configure_c.dart';

class BreathworkTypeDropdownButtonWidget extends ConsumerWidget {
  const BreathworkTypeDropdownButtonWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final types = [BreathworkType.four78, BreathworkType.wimHof];

    final meditation =
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
      value: meditation.type,
      items: types.map<DropdownMenuItem<BreathworkType>>((BreathworkType type) {
        final typeLabel =
            type == BreathworkType.four78 ? four78Label : wimHofLabel;
        return DropdownMenuItem<BreathworkType>(
          value: type,
          child: Text(typeLabel),
        );
      }).toList(),
      onChanged: (type) => ref
          .read(breathworkConfigureCProvider.notifier)
          .setType(type ?? BreathworkType.four78),
    );
  }
}
