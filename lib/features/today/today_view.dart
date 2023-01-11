import 'package:corelate/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../helpers/strings.dart';
import '../../models/meditation.dart';
import '../../models/meditation_type.dart';
import 'widgets/xwidgets.dart';
import 'today_c.dart';

class TodayView extends ConsumerStatefulWidget {
  const TodayView({super.key});

  static const routeName = 'today';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TodayViewState();
}

class _TodayViewState extends ConsumerState<TodayView> {
  @override
  void initState() {
    ref.read(todayCProvider.notifier).loadActivities();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(todayLabel),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.calendar_month),
          ),
        ],
      ),
      body: Stack(
        children: [
          ref.watch(todayCProvider).activities.isEmpty
              ? const EmptyStateWidget()
              : ListView.builder(
                  itemCount: ref.watch(todayCProvider).activities.length,
                  itemBuilder: (context, index) {
                    final activity =
                        ref.watch(todayCProvider).activities[index];
                    var title = 'N/A';
                    var type = '';
                    var durationString = '';

                    if (activity is Meditation) {
                      title = 'Meditation';
                      type = activity.type == MeditationType.timed
                          ? activity.type.name.capitalize()
                          : 'Open-ended';
                      final minutes = activity.elapsed ~/ 60;
                      final seconds = minutes == 0
                          ? activity.elapsed
                          : activity.elapsed - minutes * 60;
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

                    final color = Theme.of(context).colorScheme;
                    final morning =
                        Icon(Icons.wb_twilight, size: 32, color: color.primary);
                    final midday =
                        Icon(Icons.sunny, size: 32, color: color.secondary);
                    final night =
                        Icon(Icons.bedtime, size: 32, color: color.tertiary);

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
                          Text('$hour:$minuteString'),
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
                ),
          if (ref.watch(todayCProvider).fabExpanded)
            Positioned.fill(
              child: GestureDetector(
                onTap: () =>
                    ref.read(todayCProvider.notifier).setFABExpanded(false),
                child: Container(
                  color:
                      Theme.of(context).colorScheme.background.withOpacity(0.8),
                ),
              ),
            ),
        ],
      ),
      floatingActionButton: const ExpandedFloatingActionButtonWidget(),
    );
  }
}
