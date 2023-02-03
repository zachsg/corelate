import 'package:corelate/helpers/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../models/meditation_type.dart';
import '../meditation_configure_c.dart';

class MeditationTypeDropdownButtonWidget extends ConsumerWidget {
  const MeditationTypeDropdownButtonWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final types = [MeditationType.openEnded, MeditationType.timed];

    final meditation = ref.watch(meditationConfigureCProvider).meditation;

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
      items: types.map<DropdownMenuItem<MeditationType>>((MeditationType type) {
        final typeLabel =
            type == MeditationType.openEnded ? openEndedLabel : timedLabel;
        return DropdownMenuItem<MeditationType>(
          value: type,
          child: Text(typeLabel),
        );
      }).toList(),
      onChanged: (type) => ref
          .read(meditationConfigureCProvider.notifier)
          .setType(type ?? MeditationType.openEnded),
    );
  }
}
