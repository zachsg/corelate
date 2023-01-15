import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../helpers/extensions.dart';
import '../../../helpers/strings.dart';
import '../../../models/activity.dart';
import '../../../models/meditation_type.dart';
import '../today_c.dart';
import 'empty_state_widget.dart';

class TodaysActivitiesListWidget extends ConsumerWidget {
  const TodaysActivitiesListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(todayActivitiesStreamProvider).when(
          data: (activities) {
            return activities.isEmpty
                ? const EmptyStateWidget(
                    icon: Icons.sunny,
                    message: emptyStateToday,
                  )
                : ListView.builder(
                    itemCount: activities.length,
                    itemBuilder: (context, index) {
                      final activity = activities[index];
                      final meditation = activity.meditation;
                      var title = 'N/A';
                      var type = '';
                      var durationString = '';

                      // Format activity based on the type of activity
                      if (meditation != null) {
                        title = 'Meditation';
                        type = meditation.type == MeditationType.timed
                            ? meditation.type.name.capitalize()
                            : 'Open-ended';
                        final minutes = meditation.elapsed ~/ 60;
                        final seconds = minutes == 0
                            ? meditation.elapsed
                            : meditation.elapsed - minutes * 60;
                        if (minutes == 0) {
                          durationString = '${seconds}s';
                        } else if (seconds == 0) {
                          durationString = '${minutes}m';
                        } else {
                          durationString = '${minutes}m ${seconds}s';
                        }
                      }

                      // Setup the time of day / date, and appropriate icon
                      final hour = activity.date.hour;
                      final minute = activity.date.minute;
                      final minuteString = minute < 10 ? '0$minute' : minute;
                      var timeString = '';

                      final day = activity.date.day;

                      final is24HoursFormat =
                          MediaQuery.of(context).alwaysUse24HourFormat;
                      if (day < DateTime.now().day) {
                        timeString =
                            DateFormat('M/dd/yy').format(activity.date);
                      } else if (is24HoursFormat) {
                        timeString = '$hour:$minuteString';
                      } else {
                        timeString =
                            DateFormat('hh:mm a').format(activity.date);
                      }

                      final color = Theme.of(context).colorScheme;
                      final morning = Icon(Icons.wb_twilight,
                          size: 28, color: color.primary);
                      final midday =
                          Icon(Icons.sunny, size: 28, color: color.secondary);
                      final night =
                          Icon(Icons.bedtime, size: 28, color: color.tertiary);

                      return ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 20,
                        ),
                        leading: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            hour < 12
                                ? morning
                                : hour < 18
                                    ? midday
                                    : night,
                            Text(
                              timeString,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                        title: Text(title),
                        subtitle: Row(
                          children: [
                            Text('$type:'),
                            const SizedBox(width: 4),
                            const Icon(Icons.timer, size: 20),
                            Text(durationString),
                          ],
                        ),
                        onTap: () =>
                            _showSessionCompleteDialog(ref, context, activity),
                      );
                    },
                  );
          },
          error: (error, stackTrace) => Center(
            child: Expanded(
              child: Text('$somethingWrongLabel: $error'),
            ),
          ),
          loading: () => const EmptyStateWidget(
            icon: Icons.sunny,
            message: emptyStateToday,
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
