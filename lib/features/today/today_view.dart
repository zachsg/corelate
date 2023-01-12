import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../helpers/strings.dart';
import 'widgets/xwidgets.dart';
import 'today_c.dart';

class TodayView extends ConsumerWidget {
  const TodayView({super.key});

  static const routeName = 'today';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
              : const TodaysActivitiesListWidget(),
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
