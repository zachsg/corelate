import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../helpers/strings.dart';
import '../../../models/activity_model.dart';
import '../../../models/breathwork_model.dart';
import '../../../models/meditation_model.dart';
import '../today.dart';
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
    ref.read(todayProvider.notifier).loadTodaysActivities();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final sleepMinutes = ref.watch(todayProvider).sleepMinutes;
    final hours = sleepMinutes ~/ 60;
    final minutes = sleepMinutes - hours * 60;

    return ref.watch(todayProvider).activities.isEmpty
        ? Stack(
            children: [
              _balanceCard(context, sleepMinutes, hours, minutes),
              const Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: 0,
                child: EmptyStateWidget(
                  icon: Icons.sunny,
                  message: emptyStateToday,
                ),
              ),
            ],
          )
        : Column(
            children: [
              _balanceCard(context, sleepMinutes, hours, minutes),
              Expanded(
                child: ListView.builder(
                  itemCount: ref.watch(todayProvider).activities.length,
                  itemBuilder: (context, index) {
                    final activity = ref.watch(todayProvider).activities[index];

                    final timeString = _getTimeFormatted(context, activity);
                    Icon icon = _getTimeIcon(context, activity.date.hour);

                    final isEven = index % 2 == 0;
                    final isFirstRow = index == 0 || index == 1;

                    if (activity is MeditationModel) {
                      return Dismissible(
                          key: UniqueKey(),
                          direction: DismissDirection.endToStart,
                          onDismissed: (direction) => ref
                              .read(todayProvider.notifier)
                              .deleteActivity(
                                  isToday: false, activity: activity),
                          background: Container(
                            color:
                                Theme.of(context).colorScheme.primaryContainer,
                            child: _dismissibleBackgroundWidget(),
                          ),
                          child: const ListTile(
                            title: Text('meditation'),
                          )
                          // MeditationCardWidget(
                          //   title: 'Meditation',
                          //   meditation: activity,
                          //   icon: icon,
                          //   timeString: timeString,
                          //   isEven: isEven,
                          //   isFirstRow: isFirstRow,
                          // ),
                          );
                    } else if (activity is BreathworkModel) {
                      return Dismissible(
                        key: UniqueKey(),
                        direction: DismissDirection.endToStart,
                        onDismissed: (direction) => ref
                            .read(todayProvider.notifier)
                            .deleteActivity(isToday: true, activity: activity),
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
                ),
              ),
            ],
          );
  }

  Padding _balanceCard(
      BuildContext context, int sleepMinutes, int hours, int minutes) {
    var formatter = NumberFormat.decimalPattern();

    return Padding(
      padding: const EdgeInsets.only(
        left: 8.0,
        right: 8.0,
        bottom: 2.0,
      ),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Text(
                    'Balance',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Row(
                    children: [
                      const Icon(Icons.directions_walk, size: 24),
                      const SizedBox(width: 8),
                      Text(
                        'Step Count:',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        formatter.format(ref.watch(todayProvider).steps),
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 4),
              if (sleepMinutes != 0)
                Row(
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.hotel, size: 24),
                        const SizedBox(width: 8),
                        Text(
                          'Total Sleep:',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '$hours hr, $minutes min',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
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

  String _getTimeFormatted(BuildContext context, ActivityModel activity) {
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
