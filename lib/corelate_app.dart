import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'corelate_theme.dart';
import 'features/bottom_navigation/bottom_navigation_view.dart';
import 'features/breathwork/breathwork_configure/breathwork_configure_view.dart';
import 'features/breathwork/four_7_8/four_7_8_view.dart';
import 'features/breathwork/wim_hof/wim_hof_view.dart';
import 'features/meditation/meditation_configure/meditation_configure_view.dart';
import 'features/meditation/meditation_during/meditation_during_view.dart';
import 'features/today/today_view.dart';
import 'helpers/constants.dart';
import 'helpers/strings.dart';

class CorelateApp extends ConsumerWidget {
  CorelateApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const corelateTheme = CorelateTheme();
    const corelateDarkTheme = CorelateDarkTheme();

    return MaterialApp.router(
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      routerDelegate: router.routerDelegate,
      title: appNameLabel,
      theme: corelateTheme.toThemeData(),
      darkTheme: corelateDarkTheme.toThemeData(),
      themeMode: ThemeMode.system,
    );
  }

  final router = GoRouter(
    initialLocation: BottomNavigationView.routeName,
    routes: [
      GoRoute(
        name: BottomNavigationView.routeName,
        path: BottomNavigationView.routeName,
        builder: (context, state) => const BottomNavigationView(),
        routes: [
          GoRoute(
            name: TodayView.routeName,
            path: TodayView.routeName,
            builder: (context, state) => const TodayView(),
            routes: [
              GoRoute(
                name: MeditationConfigureView.routeName,
                path: MeditationConfigureView.routeName,
                builder: (context, state) => const MeditationConfigureView(),
                routes: [
                  GoRoute(
                    name: MeditationDuringView.routeName,
                    path: MeditationDuringView.routeName,
                    builder: (context, state) => const MeditationDuringView(),
                  ),
                ],
              ),
              GoRoute(
                name: BreathworkConfigureView.routeName,
                path: BreathworkConfigureView.routeName,
                builder: (context, state) => const BreathworkConfigureView(),
                routes: [
                  GoRoute(
                    name: Four78View.routeName,
                    path: Four78View.routeName,
                    builder: (context, state) => const Four78View(),
                  ),
                  GoRoute(
                    name: WimHofView.routeName,
                    path: WimHofView.routeName,
                    builder: (context, state) => const WimHofView(),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
