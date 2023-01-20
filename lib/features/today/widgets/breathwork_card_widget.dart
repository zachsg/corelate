import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../models/activity.dart';
import '../../../models/breathwork_type.dart';
import '../today_c.dart';
import 'activity_card_widget.dart';

class BreathworkCardWidget extends ConsumerWidget {
  const BreathworkCardWidget({
    super.key,
    required this.title,
    required this.activity,
    required this.icon,
    required this.timeString,
    required this.isEven,
    required this.isFirstRow,
  });

  final String title;
  final Activity activity;
  final String timeString;
  final Icon icon;
  final bool isEven;
  final bool isFirstRow;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final breathwork = activity.breathwork;
    var type = '';

    if (breathwork != null) {
      type = breathwork.type == BreathworkType.four78 ? '4-7-8' : 'Wim Hof';
    }

    return ActivityCardWidget(
      isEven: isEven,
      isFirstRow: isFirstRow,
      onTap: () => _showSessionCompleteDialog(ref, context, activity),
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
                    Text('${breathwork?.rounds} rounds'),
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
      WidgetRef ref, BuildContext context, Activity activity) async {
    final breathwork = activity.breathwork;
    var title = 'Breathwork';
    var message = '';

    if (breathwork != null) {
      final rounds = breathwork.rounds;
      if (breathwork.type == BreathworkType.four78) {
        title += ' (4-7-8)';
      } else {
        title += ' (Wim Hof)';
        final breathsPerRound = breathwork.breathsPerRound;
        message = 'You did $rounds rounds of the Wim Hof Method'
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

          message += '\n\t- Round #$round: $durationString';
        }
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
              child: Text(
                'Delete',
                style: TextStyle(color: Theme.of(context).colorScheme.error),
              ),
              onPressed: () {
                ref.read(todayCProvider.notifier).deleteActivity(activity);
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              onPressed: Navigator.of(context).pop,
              child: const Text('Done'),
            ),
          ],
        );
      },
    );
  }
}
