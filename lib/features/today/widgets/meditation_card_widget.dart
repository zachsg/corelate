import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../helpers/extensions.dart';
import '../../../models/activity.dart';
import '../../../models/meditation_type.dart';
import '../today_c.dart';

class MeditationCardWidget extends ConsumerWidget {
  const MeditationCardWidget({
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
    final meditation = activity.meditation;
    var type = '';
    var durationString = '';

    if (meditation != null) {
      type = meditation.type == MeditationType.timed
          ? meditation.type.name.capitalize()
          : 'Open-ended';

      final minutes = meditation.elapsed ~/ 60;
      final seconds =
          minutes == 0 ? meditation.elapsed : meditation.elapsed - minutes * 60;
      if (minutes == 0) {
        durationString = '${seconds}s';
      } else if (seconds == 0) {
        durationString = '${minutes}m';
      } else {
        durationString = '${minutes}m ${seconds}s';
      }
    }

    return Padding(
      padding: EdgeInsets.only(
        bottom: isFirstRow ? 16.0 : 16.0,
        left: isEven ? 16.0 : 8.0,
        right: isEven ? 8.0 : 16.0,
      ),
      child: GestureDetector(
        onTap: () => _showSessionCompleteDialog(ref, context, activity),
        child: Card(
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
                          Icons.timer,
                          size: 20,
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                        const SizedBox(width: 4),
                        Text(durationString),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _showSessionCompleteDialog(
      WidgetRef ref, BuildContext context, Activity activity) async {
    final meditation = activity.meditation;
    var title = '';
    var message = '';

    if (meditation != null) {
      title = 'Meditation';
      final elapsed = meditation.elapsed;

      final minutes = elapsed / 60 > 0 ? elapsed ~/ 60 : 0;
      final seconds = minutes == 0 ? elapsed : elapsed - minutes * 60;

      var durationString = '';
      if (minutes == 0) {
        durationString = '$seconds seconds';
      } else if (seconds == 0) {
        durationString = '$minutes minutes';
      } else {
        durationString = '$minutes minutes and $seconds seconds';
      }

      message = 'You meditated for $durationString.';
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
