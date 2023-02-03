import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../models/breathwork.dart';
import '../../../models/breathwork_type.dart';
import '../today_c.dart';
import 'activity_card_widget.dart';

class BreathworkCardWidget extends ConsumerWidget {
  const BreathworkCardWidget({
    super.key,
    required this.title,
    required this.breathwork,
    required this.icon,
    required this.timeString,
    required this.isEven,
    required this.isFirstRow,
  });

  final String title;
  final Breathwork breathwork;
  final String timeString;
  final Icon icon;
  final bool isEven;
  final bool isFirstRow;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var type = '';
    int rounds = 0;

    type = breathwork.type == BreathworkType.four78 ? '4-7-8' : 'Wim Hof';
    rounds = breathwork.holdSecondsPerRound?.length ?? 0;

    return ActivityCardWidget(
      isEven: isEven,
      isFirstRow: isFirstRow,
      onTap: () => _showSessionCompleteDialog(ref, context, breathwork),
      child: Stack(
        children: [
          Positioned(
            top: 8,
            right: 8,
            child: icon,
          ),
          Positioned(
            top: 18,
            left: 8,
            child: Text(
              timeString,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          Positioned(
            bottom: 8,
            left: 8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.style,
                      size: 20,
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                    const SizedBox(width: 4),
                    Text(type),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.restart_alt,
                      size: 20,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                    const SizedBox(width: 4),
                    Text('$rounds ${rounds == 1 ? 'round' : 'rounds'}'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _showSessionCompleteDialog(
      WidgetRef ref, BuildContext context, Breathwork breathwork) async {
    var title = 'Breathwork';
    var message = '';

    final rounds = breathwork.holdSecondsPerRound?.length ?? 0;
    if (breathwork.type == BreathworkType.four78) {
      title += ' (4-7-8)';
    } else {
      title += ' (Wim Hof)';
      final breathsPerRound = breathwork.breathsPerRound;
      message =
          'You did $rounds ${rounds == 1 ? 'round' : 'rounds'} of the Wim Hof Method'
          ' ($breathsPerRound breaths per round).'
          '\n\nIndividual breath holds:';

      var round = 0;
      for (final hold in breathwork.holdSecondsPerRound ?? []) {
        round += 1;

        var durationString = '';

        final minutes = hold ~/ 60;
        final seconds = minutes == 0 ? hold : hold - minutes * 60;
        if (minutes == 0) {
          durationString = '${seconds}s';
        } else if (seconds == 0) {
          durationString = '${minutes}m';
        } else {
          durationString = '${minutes}m ${seconds}s';
        }

        message += '\n\t- Round $round: $durationString';
      }
    }

    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('$title Details'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text(message),
              ],
            ),
          ),
          actions: [
            TextButton(
              child: const Text('Delete'),
              onPressed: () {
                ref
                    .read(todayCProvider.notifier)
                    .deleteActivity(isToday: true, activity: breathwork);
                Navigator.of(context).pop();
              },
            ),
            FilledButton(
              onPressed: Navigator.of(context).pop,
              child: const Text('Done'),
            ),
          ],
        );
      },
    );
  }
}
