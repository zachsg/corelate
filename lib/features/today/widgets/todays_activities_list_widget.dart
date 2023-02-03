import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../helpers/strings.dart';
import '../../../models/activity.dart';
import '../../../models/breathwork.dart';
import '../../../models/breathwork_type.dart';
import '../../../models/meditation.dart';
import '../today_c.dart';
import 'xwidgets.dart';

class XXX extends ConsumerStatefulWidget {
  const XXX({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _XXXState();
}

class _XXXState extends ConsumerState<XXX> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class TodaysActivitiesListWidget extends ConsumerStatefulWidget {
  const TodaysActivitiesListWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TodaysActivitiesListWidgetState();
}

class _TodaysActivitiesListWidgetState
    extends ConsumerState<TodaysActivitiesListWidget> {
  @override
  void initState() {
    ref.read(todayCProvider.notifier).loadTodaysActivities();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ref.watch(todayCProvider).activities.isEmpty
        ? const EmptyStateWidget(
            icon: Icons.sunny,
            message: emptyStateToday,
          )
        : GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.25,
            ),
            itemCount: ref.watch(todayCProvider).activities.length,
            itemBuilder: (context, index) {
              final activity = ref.watch(todayCProvider).activities[index];

              final timeString = _getTimeFormatted(context, activity);
              Icon icon = _getTimeIcon(context, activity.date.hour);

              final isEven = index % 2 == 0;
              final isFirstRow = index == 0 || index == 1;

              if (activity is Meditation) {
                final meditation = activity;
                return MeditationCardWidget(
                  title: 'Meditation',
                  meditation: meditation,
                  icon: icon,
                  timeString: timeString,
                  isEven: isEven,
                  isFirstRow: isFirstRow,
                );
              } else if (activity is Breathwork) {
                final breathwork = activity;
                if (breathwork.type == BreathworkType.four78) {
                  return const Text('4-7-8');
                } else {
                  return BreathworkCardWidget(
                    title: 'Breathwork',
                    breathwork: breathwork,
                    icon: icon,
                    timeString: timeString,
                    isEven: isEven,
                    isFirstRow: isFirstRow,
                  );
                }
              } else {
                return const Text('n/a');
              }
            },
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
