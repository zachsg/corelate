import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../helpers/strings.dart';
import 'widgets/xwidgets.dart';
import 'today_c.dart';

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
      ref.read(dateCProvider.notifier).reset();
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
    final showingToday = ref.watch(todayCProvider).showingToday;

    return Scaffold(
      appBar: AppBar(
        title: Text(showingToday ? todayLabel : historyLabel),
        actions: [
          IconButton(
            onPressed: ref.read(todayCProvider.notifier).toggleShowingToday,
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
      floatingActionButton:
          showingToday ? const ExpandedFloatingActionButtonWidget() : null,
    );
  }
}
