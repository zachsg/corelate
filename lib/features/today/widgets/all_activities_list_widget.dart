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
import '../../widgets/xwidgets.dart';
import '../today.dart';
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
    final date = ref.read(todayProvider).historyDate;
    ref.read(todayProvider.notifier).loadActivitiesForDate(date);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final formatterThisYear = DateFormat('MMMM d');
    final formatterPrevYear = DateFormat('MMMM d, yyyy');

    final today = DateTime.now().copyWith(hour: 0, minute: 0);
    final historyDate = ref.read(todayProvider).historyDate;

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
                    ref.read(todayProvider.notifier).decrementHistoryDate,
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
                      onPressed:
                          ref.read(todayProvider.notifier).incrementHistoryDate,
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
        ref.watch(todayProvider).activities.isEmpty
            ? const EmptyStateWidget(
                icon: Icons.psychology_alt,
                message: emptyStateHistory,
              )
            : Expanded(
                child: ListView.builder(
                  // shrinkWrap: true,
                  itemCount: ref.watch(todayProvider).activities.length,
                  itemBuilder: (context, index) {
                    final activity = ref.watch(todayProvider).activities[index];

                    IconData? ratingIcon;
                    if (activity is Meditation) {
                      ratingIcon = activity.rating?.iconForRating();
                    } else if (activity is Breathwork) {
                      ratingIcon = activity.rating?.iconForRating();
                    }

                    final last = ref.watch(todayProvider).activities.length - 1;

                    return Dismissible(
                      key: UniqueKey(),
                      direction: DismissDirection.endToStart,
                      onDismissed: (direction) => ref
                          .read(todayProvider.notifier)
                          .deleteActivity(isToday: false, activity: activity),
                      background: Container(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12.0),
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
                        child: GestureDetector(
                          onTap: () {
                            if (activity is Meditation) {
                              showModalBottomSheet<void>(
                                context: context,
                                builder: (BuildContext context) =>
                                    _meditationSheet(ref, context, activity),
                              );
                            } else if (activity is Breathwork) {
                              showModalBottomSheet<void>(
                                context: context,
                                builder: (BuildContext context) =>
                                    _breathworkSheet(ref, context, activity),
                              );
                            }
                          },
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                children: [
                                  _headerWidget(context, activity),
                                  const SizedBox(height: 12),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      _titleWidget(context, activity),
                                      if (ratingIcon != null)
                                        Icon(
                                          ratingIcon,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          size: 24,
                                        ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
      ],
    );
  }

  Widget _headerWidget(BuildContext context, Activity activity) {
    IconData icon;
    String title;

    if (activity is Breathwork) {
      icon = Icons.air;
      title = 'Breathwork';
    } else {
      icon = Icons.self_improvement;
      title = 'Meditation';
    }
    return Row(
      children: [
        Icon(
          icon,
          color: Theme.of(context).colorScheme.secondary,
          size: 16,
        ),
        const SizedBox(width: 4),
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(color: Theme.of(context).colorScheme.secondary),
        ),
        const Spacer(),
        _timeWidget(context, activity),
      ],
    );
  }

  Widget _timeWidget(BuildContext context, Activity activity) {
    final style = Theme.of(context)
        .textTheme
        .bodySmall
        ?.copyWith(color: Theme.of(context).colorScheme.secondary);

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
    final morning = Icon(Icons.wb_twilight, size: 16, color: color.secondary);
    final midday = Icon(Icons.sunny, size: 16, color: color.secondary);
    final night = Icon(Icons.bedtime, size: 16, color: color.secondary);

    final icon = hour < 12
        ? morning
        : hour < 18
            ? midday
            : night;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(timeString, style: style),
        const SizedBox(width: 4),
        icon,
      ],
    );
  }

  Widget _titleWidget(BuildContext context, Activity activity) {
    final styleMain = Theme.of(context).textTheme.titleMedium?.copyWith(
          color: Theme.of(context).colorScheme.onBackground,
          fontWeight: FontWeight.bold,
        );

    final styleSecondary = Theme.of(context).textTheme.titleMedium?.copyWith(
          color: Theme.of(context).colorScheme.onBackground,
          fontWeight: FontWeight.normal,
        );

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
      final rounds = breathwork.rounds;
      durationString = '$rounds ${rounds == 1 ? 'round' : 'rounds'}';
    } else {
      icon = Icons.question_mark;
    }

    return Row(
      children: [
        Text(type, style: styleMain),
        const SizedBox(width: 2),
        Icon(
          Icons.navigate_next,
          size: 20,
          color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5),
        ),
        const SizedBox(width: 2),
        Icon(icon, size: 18),
        Text(durationString, style: styleSecondary),
      ],
    );
  }

  Widget _breathworkSheet(
      WidgetRef ref, BuildContext context, Breathwork breathwork) {
    var title = 'Breathwork';
    var message = '';

    final rounds = breathwork.rounds;
    if (breathwork.type == BreathworkType.four78) {
      title += ' (4-7-8)';
      message = 'You did $rounds ${rounds == 1 ? 'round' : 'rounds'} of the'
          ' 4-7-8 breathing technique.';
    } else {
      title += ' (Wim Hof)';
      final breathsPerRound = breathwork.breathsPerRound;
      message =
          'You did $rounds ${rounds == 1 ? 'round' : 'rounds'} of the Wim Hof Method'
          ' ($breathsPerRound breaths per round).\n\nIndividual breath holds:\n';
    }

    return BottomSheetWidget(
      title: title,
      children: [
        Text(
          message,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        if (breathwork.type == BreathworkType.wimHof)
          SizedBox(
            height: 150,
            width: MediaQuery.of(context).size.width,
            child: WimHofBarChartWidget(breathwork: breathwork),
          ),
      ],
    );
  }

  Widget _meditationSheet(
      WidgetRef ref, BuildContext context, Meditation meditation) {
    var title = '';
    var message = '';

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

    return BottomSheetWidget(
      title: '$title Details',
      children: [
        Text(
          message,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
