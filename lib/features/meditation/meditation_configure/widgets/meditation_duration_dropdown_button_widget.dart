import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../helpers/strings.dart';
import '../meditation_configure_c.dart';

class MeditationDurationDropdownButtonWidget extends ConsumerWidget {
  const MeditationDurationDropdownButtonWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final durations = [300, 600, 900, 1200, 1800, 2700, 3600];

    return DropdownButton(
      value: ref.watch(meditationConfigureCProvider).duration,
      items: durations.map<DropdownMenuItem<int>>((int duration) {
        String durationLabel;
        switch (duration) {
          case 300:
            durationLabel = '5 minutes';
            break;
          case 600:
            durationLabel = '10 minutes';
            break;
          case 900:
            durationLabel = '15 minutes';
            break;
          case 1200:
            durationLabel = '20 minutes';
            break;
          case 1800:
            durationLabel = '30 minutes';
            break;
          case 2700:
            durationLabel = '45 minutes';
            break;
          case 3600:
            durationLabel = '1 hour';
            break;
          default:
            durationLabel = '';
        }

        return DropdownMenuItem<int>(
          value: duration,
          child: Text(durationLabel),
        );
      }).toList(),
      onChanged: (duration) => ref
          .read(meditationConfigureCProvider.notifier)
          .setDuration(duration!),
    );
  }
}
