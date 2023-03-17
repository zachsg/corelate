import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health/health.dart';

import '../../helpers/strings.dart';
import '../../services/provider.dart';
import 'widgets/xwidgets.dart';
import 'today.dart';

class TodayView extends ConsumerStatefulWidget {
  const TodayView({super.key});

  static const routeName = 'today';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TodayViewState();
}

class _TodayViewState extends ConsumerState<TodayView>
    with WidgetsBindingObserver {
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      if (ref.read(todayProvider).showingToday) {
        ref.read(todayProvider.notifier).loadTodaysActivities();
      } else {
        final date = ref.read(todayProvider).historyDate;
        ref.read(todayProvider.notifier).loadActivitiesForDate(date);
      }
    }

    ref.read(healthCProvider.future).then((health) async {
      final dateStart = DateTime.now().copyWith(hour: 0, minute: 0);
      final dateEnd = DateTime.now();
      final steps = await health.getTotalStepsInInterval(dateStart, dateEnd);
      if (steps != null) {
        ref.read(todayProvider.notifier).setSteps(steps);
      }
    });

    ref.read(healthCProvider.future).then((health) async {
      final now = DateTime.now().copyWith(hour: 0, minute: 0);
      final dateStart = now.subtract(const Duration(hours: 6));
      final dateEnd = DateTime.now();
      final sleepList = await health.getHealthDataFromTypes(
          dateStart, dateEnd, [HealthDataType.SLEEP_ASLEEP]);
      if (sleepList.isNotEmpty) {
        final sleep = sleepList.first;
        final sleepTime = sleep.dateTo.difference(sleep.dateFrom).inMinutes;
        ref.read(todayProvider.notifier).setSleep(sleepTime);
      }
    });
  }

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final showingToday = ref.watch(todayProvider).showingToday;

    return Scaffold(
      appBar: AppBar(
        title: Text(showingToday ? todayLabel : historyLabel),
        actions: [
          IconButton(
            onPressed: ref.read(todayProvider.notifier).toggleShowingToday,
            icon: Icon(showingToday ? Icons.history : Icons.today),
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: showingToday
                ? const TodaysActivitiesListWidget()
                : const AllActivitiesListWidget(),
          ),
          if (ref.watch(todayProvider).fabExpanded)
            Positioned.fill(
              child: GestureDetector(
                onTap: () =>
                    ref.read(todayProvider.notifier).setFABExpanded(false),
                child: Container(
                  color:
                      Theme.of(context).colorScheme.background.withOpacity(0.8),
                ),
              ),
            ),
        ],
      ),
      floatingActionButton:
          showingToday ? const ExpandedFloatingActionButtonWidget() : null,
    );
  }
}
