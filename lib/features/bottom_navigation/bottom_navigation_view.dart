import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../helpers/strings.dart';
import '../today/today_view.dart';
import 'bottom_navigation.dart';

class BottomNavigationView extends ConsumerWidget {
  const BottomNavigationView({super.key});

  static const routeName = '/bottom_navigation';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ref.watch(bottomNavigationProvider) == 0
          ? const TodayView()
          : ref.watch(bottomNavigationProvider) == 1
              ? const Center(child: Text('$balanceLabel coming soon...'))
              : const Center(child: Text('$insightsLabel coming soon...')),
      bottomNavigationBar: NavigationBar(
        selectedIndex: ref.watch(bottomNavigationProvider),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.today_outlined),
            selectedIcon: Icon(Icons.today),
            label: todayLabel,
          ),
          NavigationDestination(
            icon: Icon(Icons.spa_outlined),
            selectedIcon: Icon(Icons.spa),
            label: balanceLabel,
          ),
          NavigationDestination(
            icon: Icon(Icons.lightbulb_outlined),
            selectedIcon: Icon(Icons.lightbulb),
            label: insightsLabel,
          ),
        ],
        onDestinationSelected: (index) =>
            ref.read(bottomNavigationProvider.notifier).setTab(index),
      ),
    );
  }
}
