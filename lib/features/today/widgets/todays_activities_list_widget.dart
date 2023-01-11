import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../helpers/extensions.dart';
import '../../../models/meditation.dart';
import '../../../models/meditation_type.dart';
import '../today_c.dart';

class TodaysActivitiesListWidget extends ConsumerWidget {
  const TodaysActivitiesListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.builder(
      itemCount: ref.watch(todayCProvider).activities.length,
      itemBuilder: (context, index) {
        final activity = ref.watch(todayCProvider).activities[index];
        var title = 'N/A';
        var type = '';
        var durationString = '';

        if (activity is Meditation) {
          title = 'Meditation';
          type = activity.type == MeditationType.timed
              ? activity.type.name.capitalize()
              : 'Open-ended';
          final minutes = activity.elapsed ~/ 60;
          final seconds =
              minutes == 0 ? activity.elapsed : activity.elapsed - minutes * 60;
          if (minutes == 0) {
            durationString = '${seconds}sec';
          } else if (seconds == 0) {
            durationString = '${minutes}min';
          } else {
            durationString = '${minutes}min, ${seconds}sec';
          }
        }

        final hour = activity.date.hour;
        final minute = activity.date.minute;
        final minuteString = minute < 10 ? '0$minute' : minute;
        var timeString = '';

        final is24HoursFormat = MediaQuery.of(context).alwaysUse24HourFormat;
        if (is24HoursFormat) {
          timeString = '$hour:$minuteString';
        } else {
          timeString = DateFormat('hh:mm a').format(activity.date);
        }

        final color = Theme.of(context).colorScheme;
        final morning = Icon(Icons.wb_twilight, size: 32, color: color.primary);
        final midday = Icon(Icons.sunny, size: 32, color: color.secondary);
        final night = Icon(Icons.bedtime, size: 32, color: color.tertiary);

        return ListTile(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 20,
          ),
          leading: Column(
            children: [
              hour < 12
                  ? morning
                  : hour < 18
                      ? midday
                      : night,
              Text(timeString),
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
  }
}
