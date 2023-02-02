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
                IconData icon;

                final meditation = activity.meditation;
                final breathwork = activity.breathwork;

                // Format activity based on the type of activity
                if (meditation != null) {
                  title = 'Meditation';
                  icon = Icons.timer;
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
                  icon = Icons.restart_alt;
                  type = breathwork.type == BreathworkType.four78
                      ? '4-7-8'
                      : 'Wim Hof';
                  final rounds = breathwork.holdSecondsPerRound?.length ?? 0;
                  durationString =
                      '$rounds ${rounds == 1 ? 'round' : 'rounds'}';
                } else {
                  title = 'n/a';
                  icon = Icons.question_mark;
                }

                // Setup the time of day / date, and appropriate icon
                final hour = activity.date.hour;
                final minute = activity.date.minute;
                final minuteString = minute < 10 ? '0$minute' : minute;
                var timeString = '';

                final day = activity.date.day;
                final month = activity.date.month;
                final year = activity.date.year;

                final now = DateTime.now();

                final is24HoursFormat =
                    MediaQuery.of(context).alwaysUse24HourFormat;
                if (day < now.day || month < now.month) {
                  if (year == now.year) {
                    timeString = DateFormat('MMM dd').format(activity.date);
                  } else {
                    timeString = DateFormat('M/dd/yy').format(activity.date);
                  }
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

                return Dismissible(
                  key: Key(activity.id.toString()),
                  direction: DismissDirection.endToStart,
                  onDismissed: (direction) => ref
                      .read(todayCProvider.notifier)
                      .deleteActivity(activity),
                  background: Container(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    child: Row(
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
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimaryContainer),
                              ),
                              const SizedBox(width: 4),
                              Icon(
                                Icons.delete,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimaryContainer,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 4,
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
                        Icon(icon, size: 20),
                        Text(durationString),
                      ],
                    ),
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
