import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../helpers/strings.dart';
import '../../../models/activity.dart';
import '../today_c.dart';
import 'empty_state_widget.dart';
import 'meditation_card_widget.dart';

class TodaysActivitiesListWidget extends ConsumerWidget {
  const TodaysActivitiesListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(todayActivitiesStreamProvider).when(
          data: (activities) {
            if (activities.isEmpty) {
              return const EmptyStateWidget(
                icon: Icons.sunny,
                message: emptyStateToday,
              );
            } else {
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.25,
                ),
                itemCount: activities.length,
                itemBuilder: (context, index) {
                  final activity = activities[index];

                  final timeString = _getTimeFormatted(context, activity);
                  Icon icon = _getTimeIcon(context, activity.date.hour);

                  final isEven = index % 2 == 0;
                  final isFirstRow = index == 0 || index == 1;

                  if (activity.meditation != null) {
                    return MeditationCardWidget(
                      title: 'Meditation',
                      activity: activity,
                      icon: icon,
                      timeString: timeString,
                      isEven: isEven,
                      isFirstRow: isFirstRow,
                    );
                  } else {
                    return const Text('n/a');
                  }
                },
              );
            }
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

  String _getTimeFormatted(BuildContext context, Activity activity) {
    final minute = activity.date.minute;
    final minuteString = minute < 10 ? '0$minute' : minute;
    final is24HoursFormat = MediaQuery.of(context).alwaysUse24HourFormat;

    if (activity.date.day < DateTime.now().day) {
      return DateFormat('M/dd/yy').format(activity.date);
    } else if (is24HoursFormat) {
      return '${activity.date.hour}:$minuteString';
    } else {
      return DateFormat('hh:mm a').format(activity.date);
    }
  }

  Icon _getTimeIcon(BuildContext context, int hour) {
    final color = Theme.of(context).colorScheme;

    if (hour < 12) {
      return Icon(Icons.wb_twilight, size: 28, color: color.primary);
    } else if (hour < 18) {
      return Icon(Icons.sunny, size: 28, color: color.secondary);
    } else {
      return Icon(Icons.bedtime, size: 28, color: color.tertiary);
    }
  }
}
