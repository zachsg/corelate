import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../helpers/extensions.dart';
import '../../../helpers/strings.dart';
import '../../../models/activity.dart';
import '../../../models/breathwork.dart';
import '../../../models/breathwork_type.dart';
import '../../../models/meditation.dart';
import '../../../models/meditation_type.dart';
import '../today_c.dart';
import 'empty_state_widget.dart';

class AllActivitiesListWidget extends ConsumerStatefulWidget {
  const AllActivitiesListWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AllActivitiesListWidgetState();
}

class _AllActivitiesListWidgetState
    extends ConsumerState<AllActivitiesListWidget> {
  @override
  void initState() {
    final date = ref.read(todayCProvider).historyDate;
    ref.read(todayCProvider.notifier).loadActivitiesForDate(date);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final formatterThisYear = DateFormat('MMMM d');
    final formatterPrevYear = DateFormat('MMMM d, yyyy');

    final today = DateTime.now().copyWith(hour: 0, minute: 0);
    final historyDate = ref.read(todayCProvider).historyDate;

    final isThisYear = historyDate.year == today.year;

    final historyFormatted = isThisYear
        ? formatterThisYear.format(historyDate)
        : formatterPrevYear.format(historyDate);

    final isViewingToday = today.compareTo(historyDate) == -1;

    final primaryColor = Theme.of(context).colorScheme.primaryContainer;
    final backgroundColor =
        Theme.of(context).colorScheme.onPrimaryContainer.withOpacity(0.7);

    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            boxShadow: kElevationToShadow[1],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed:
                    ref.read(todayCProvider.notifier).decrementHistoryDate,
                icon: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: backgroundColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.undo,
                      color: primaryColor,
                    ),
                  ),
                ),
              ),
              Text(
                historyFormatted,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimaryContainer),
              ),
              isViewingToday
                  ? IconButton(onPressed: () {}, icon: const SizedBox())
                  : IconButton(
                      onPressed: ref
                          .read(todayCProvider.notifier)
                          .incrementHistoryDate,
                      icon: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: backgroundColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.redo,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ),
            ],
          ),
        ),
        ref.watch(todayCProvider).activities.isEmpty
            ? const EmptyStateWidget(
                icon: Icons.psychology_alt,
                message: emptyStateHistory,
              )
            : Column(
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: ref.watch(todayCProvider).activities.length,
                    itemBuilder: (context, index) {
                      final activity =
                          ref.watch(todayCProvider).activities[index];

                      final last =
                          ref.watch(todayCProvider).activities.length - 1;

                      return Dismissible(
                        key: UniqueKey(),
                        direction: DismissDirection.endToStart,
                        onDismissed: (direction) => ref
                            .read(todayCProvider.notifier)
                            .deleteActivity(isToday: false, activity: activity),
                        background: Container(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0),
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
                                      Icons.delete_outline,
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
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 10.0,
                            right: 10.0,
                            top: index == 0 ? 6.0 : 2.0,
                            bottom: index == last ? 6.0 : 2.0,
                          ),
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16.0,
                                vertical: 24.0,
                              ),
                              child: Row(
                                children: [
                                  _leadingWidget(context, activity),
                                  const SizedBox(width: 20),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _titleWidget(context, activity),
                                      _subtitleWidget(context, activity),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
      ],
    );
  }

  Widget _leadingWidget(BuildContext context, Activity activity) {
    final style = Theme.of(context)
        .textTheme
        .bodySmall
        ?.copyWith(color: Theme.of(context).colorScheme.onBackground);

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
    final morning = Icon(Icons.wb_twilight, size: 28, color: color.primary);
    final midday = Icon(Icons.sunny, size: 28, color: color.secondary);
    final night = Icon(Icons.bedtime, size: 28, color: color.tertiary);

    final icon = hour < 12
        ? morning
        : hour < 18
            ? midday
            : night;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon,
        Text(timeString, style: style),
      ],
    );
  }

  Widget _titleWidget(BuildContext context, Activity activity) {
    final style = Theme.of(context)
        .textTheme
        .titleMedium
        ?.copyWith(color: Theme.of(context).colorScheme.onBackground);

    String title = '';
    if (activity is Meditation) {
      title = 'Meditation';
    } else if (activity is Breathwork) {
      title = 'Breathwork';
    }

    return Text(title, style: style);
  }

  Widget _subtitleWidget(BuildContext context, Activity activity) {
    final style = Theme.of(context)
        .textTheme
        .bodyMedium
        ?.copyWith(color: Theme.of(context).colorScheme.onBackground);

    var type = '';
    var durationString = '';
    IconData icon;

    // Format activity based on the type of activity
    if (activity is Meditation) {
      final meditation = activity;
      icon = Icons.timer_outlined;
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
    } else if (activity is Breathwork) {
      final breathwork = activity;
      icon = Icons.restart_alt;
      type = breathwork.type == BreathworkType.four78 ? '4-7-8' : 'Wim Hof';
      final rounds = breathwork.holdSecondsPerRound?.length ?? 0;
      durationString = '$rounds ${rounds == 1 ? 'round' : 'rounds'}';
    } else {
      icon = Icons.question_mark;
    }

    return Row(
      children: [
        Text(type, style: style),
        const SizedBox(width: 2),
        Icon(
          Icons.navigate_next,
          size: 20,
          color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5),
        ),
        const SizedBox(width: 2),
        Icon(icon, size: 18),
        Text(durationString, style: style),
      ],
    );
  }
}
