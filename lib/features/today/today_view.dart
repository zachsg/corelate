import 'package:corelate/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../helpers/strings.dart';
import '../../models/meditation.dart';
import 'widgets/expanded_floating_action_button_widget.dart';
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
          ListView.builder(
            itemCount: ref.watch(todayCProvider).activities.length,
            itemBuilder: (context, index) {
              final activity = ref.watch(todayCProvider).activities[index];
              var title = 'N/A';
              var type;

              if (activity is Meditation) {
                title = 'Meditation';
                type = activity.type.name.capitalize();
              }

              final month = activity.date.month;
              final day = activity.date.day;
              final year = activity.date.year;
              final hour = activity.date.hour;
              final minute = activity.date.minute;

              return ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 4,
                  horizontal: 16,
                ),
                leading: Column(
                  children: [
                    hour < 12
                        ? Icon(
                            Icons.sunny,
                            size: 32,
                            color: Theme.of(context).colorScheme.primary,
                          )
                        : hour < 18
                            ? Icon(
                                Icons.cloud,
                                size: 32,
                                color: Theme.of(context).colorScheme.secondary,
                              )
                            : Icon(
                                Icons.bedtime,
                                size: 32,
                                color: Theme.of(context).colorScheme.tertiary,
                              ),
                    Text('$hour:$minute'),
                  ],
                ),
                title: Text('$title (${type ?? 'n/a'})'),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('$month/$day/$year'),
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
