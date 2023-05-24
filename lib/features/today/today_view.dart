import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../helpers/strings.dart';
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
