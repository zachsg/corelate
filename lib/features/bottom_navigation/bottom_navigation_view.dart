import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../helpers/strings.dart';
import '../today/today_c.dart';
import '../today/today_view.dart';
import 'bottom_navigation_c.dart';

class BottomNavigationView extends ConsumerStatefulWidget {
  const BottomNavigationView({super.key});

  static const routeName = '/bottom_navigation';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _BottomNavigationViewState();
}

class _BottomNavigationViewState extends ConsumerState<BottomNavigationView> {
  @override
  void initState() {
    ref.read(todayCProvider.notifier).loadActivities();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ref.watch(bottomNavigationCProvider) == 0
          ? const TodayView()
          : const Center(child: Text(profileLabel)),
      bottomNavigationBar: NavigationBar(
        // labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        // height: 44,
        selectedIndex: ref.watch(bottomNavigationCProvider),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.today_outlined),
            selectedIcon: Icon(Icons.today),
            label: todayLabel,
          ),
          NavigationDestination(
            icon: Icon(Icons.face_outlined),
            selectedIcon: Icon(Icons.face),
            label: profileLabel,
          ),
        ],
        onDestinationSelected: (index) =>
            ref.read(bottomNavigationCProvider.notifier).setTab(index),
      ),
    );
  }
}
