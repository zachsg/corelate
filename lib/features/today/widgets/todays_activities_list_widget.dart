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
                return Dismissible(
                  key: UniqueKey(),
                  direction: DismissDirection.endToStart,
                  onDismissed: (direction) => ref
                      .read(todayCProvider.notifier)
                      .deleteActivity(isToday: false, activity: activity),
                  background: Container(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    child: _dismissibleBackgroundWidget(),
                  ),
                  child: MeditationCardWidget(
                    title: 'Meditation',
                    meditation: activity,
                    icon: icon,
                    timeString: timeString,
                    isEven: isEven,
                    isFirstRow: isFirstRow,
                  ),
                );
              } else if (activity is Breathwork) {
                return Dismissible(
                  key: UniqueKey(),
                  direction: DismissDirection.endToStart,
                  onDismissed: (direction) => ref
                      .read(todayCProvider.notifier)
                      .deleteActivity(isToday: false, activity: activity),
                  background: Container(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    child: _dismissibleBackgroundWidget(),
                  ),
                  child: BreathworkCardWidget(
                    title: 'Breathwork',
                    breathwork: activity,
                    icon: icon,
                    timeString: timeString,
                    isEven: isEven,
                    isFirstRow: isFirstRow,
                  ),
                );
              } else {
                return const Text('n/a');
              }
            },
          );
  }

  Widget _dismissibleBackgroundWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
            children: [
              Text(
                'Delete',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimaryContainer),
              ),
              const SizedBox(width: 4),
              Icon(
                Icons.delete_outline,
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
            ],
          ),
        ),
      ],
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
