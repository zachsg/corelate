import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../helpers/extensions.dart';
import '../../../helpers/strings.dart';
import '../../../models/breathwork_type.dart';
import '../../../models/meditation_type.dart';
import '../today_c.dart';
import 'empty_state_widget.dart';

class AllActivitiesListWidget extends ConsumerWidget {
  const AllActivitiesListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(allActivitiesStreamProvider).when(
          data: (activities) {
            return ListView.builder(
              itemCount: activities.length,
              itemBuilder: (context, index) {
                final activity = activities[index];
                var title = 'N/A';
                var type = '';
                var durationString = '';

                final meditation = activity.meditation;
                final breathwork = activity.breathwork;

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
                } else if (breathwork != null) {
                  title = 'Breathwork';
                  type = breathwork.type == BreathworkType.four78
                      ? '4-7-8 Breath'
                      : 'Wim Hof Method';
                  durationString = '{breathwork.rounds} rounds';
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
                  timeString = DateFormat('M/dd/yy').format(activity.date);
                } else if (is24HoursFormat) {
                  timeString = '$hour:$minuteString';
                } else {
                  timeString = DateFormat('hh:mm a').format(activity.date);
                }

                final color = Theme.of(context).colorScheme;
                final morning =
                    Icon(Icons.wb_twilight, size: 28, color: color.primary);
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
            icon: Icons.psychology_alt,
            message: emptyStateHistory,
          ),
        );
  }
}
