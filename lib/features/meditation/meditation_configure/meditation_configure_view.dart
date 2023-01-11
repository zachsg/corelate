import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:wakelock/wakelock.dart';

import '../../../helpers/strings.dart';
import '../meditation_during/meditation_during_view.dart';
import '../../../models/meditation_type.dart';
import 'meditation_configure_c.dart';
import 'widgets/xwidgets.dart';

class MeditationConfigureView extends ConsumerWidget {
  const MeditationConfigureView({super.key});

  static const routeName = 'meditation_configure';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final meditation = ref.watch(meditationConfigureCProvider).meditation;

    return Scaffold(
      appBar: AppBar(
        title: const Text(meditationTitle),
      ),
      body: Column(
        children: [
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(typeLabel),
              SizedBox(width: 8),
              MeditationTypeDropdownButtonWidget()
            ],
          ),
          if (meditation.type == MeditationType.timed)
            Column(
              children: [
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(goalLabel),
                    SizedBox(width: 8),
                    MeditationGoalDropdownButtonWidget()
                  ],
                ),
              ],
            ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () {
              Wakelock.enable();
              ref.read(meditationConfigureCProvider.notifier).resetDate();
              context.pushNamed(MeditationDuringView.routeName);
            },
            child: const Text(startLabel),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Row(
              children: [
                meditation.type == MeditationType.timed
                    ? Expanded(
                        child: Row(
                          children: [
                            Icon(
                              Icons.info,
                              size: 32,
                              color: Theme.of(context).colorScheme.onBackground,
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Text(
                                'Meditate for ${meditation.goal! ~/ 60} minutes. Tap on "Begin" to start. Once the session is underway, tap on "End Early" if you\'d like to cut your session short; otherwise just meditate until the session ends of its own volition.',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(fontStyle: FontStyle.italic),
                              ),
                            )
                          ],
                        ),
                      )
                    : Expanded(
                        child: Row(
                          children: [
                            Icon(
                              Icons.info,
                              size: 32,
                              color: Theme.of(context).colorScheme.onBackground,
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Text(
                                'Meditate for as long as you\'d like. Tap on "Begin" to start. Once the session is underway, tap on "End Session" to mark your meditation as complete.',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(fontStyle: FontStyle.italic),
                              ),
                            )
                          ],
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
