import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'features/bottom_navigation/bottom_navigation_view.dart';
import 'features/breathwork/breathwork_configure/breathwork_configure_view.dart';
import 'features/meditation/meditation_configure/meditation_configure_view.dart';
import 'features/meditation/meditation_during/meditation_during_view.dart';
import 'features/today/today_view.dart';
import 'helpers/constants.dart';
import 'helpers/strings.dart';

class CorelateApp extends ConsumerWidget {
  CorelateApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      routerDelegate: router.routerDelegate,
      title: appNameLabel,
      theme: ThemeData.from(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: primaryColor,
          brightness: Brightness.light,
        ),
      ),
      // ThemeData.light(
      //   useMaterial3: true,
      //   colorSchemeSeed: primaryColor,
      // ),
      darkTheme: ThemeData.from(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: primaryColor,
          brightness: Brightness.dark,
        ),
      ),
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
                routes: [],
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
