import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:wakelock/wakelock.dart';

import '../../../data/provider.dart';
import '../../../helpers/strings.dart';
import '../../../models/meditation.dart';
import '../meditation_during/meditation_during_view.dart';
import '../../../models/meditation_type.dart';
import 'meditation_configure_c.dart';
import 'widgets/xwidgets.dart';

class MeditationConfigureView extends ConsumerWidget {
  const MeditationConfigureView({super.key});

  static const routeName = 'meditation_configure';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final meditation =
        ref.watch(meditationConfigureCProvider).activity.meditation ??
            Meditation();

    return Scaffold(
      appBar: AppBar(
        title: const Text(meditationTitle),
      ),
      body: Column(
        children: [
          const SizedBox(height: 16),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      typeLabel,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(width: 8),
                    const MeditationTypeDropdownButtonWidget()
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 32.0),
                child: Divider(),
              ),
            ],
          ),
          if (meditation.type == MeditationType.timed)
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        goalLabel,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(width: 8),
                      const MeditationGoalDropdownButtonWidget()
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 32.0),
                  child: Divider(),
                ),
              ],
            ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () {
              Wakelock.enable();
              ref.read(meditationConfigureCProvider.notifier).resetDate();
              context.pushNamed(MeditationDuringView.routeName);
              ref.read(healthCProvider);
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 32,
                vertical: 16,
              ),
              child: Text(startLabel),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    meditation.type == MeditationType.timed
                        ? InfoTimedMeditationWidget(meditation: meditation)
                        : const InfoOpenEndedMeditationWidget(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
