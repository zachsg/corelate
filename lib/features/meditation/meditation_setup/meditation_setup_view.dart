import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:wakelock/wakelock.dart';

import '../../../services/provider.dart';
import '../../../helpers/strings.dart';
import '../../../models/meditation_model.dart';
import '../../widgets/xwidgets.dart';
import '../meditation_during/meditation_during_view.dart';
import '../../../models/meditation_type.dart';
import 'meditation_setup.dart';
import 'widgets/xwidgets.dart';

class MeditationSetupView extends ConsumerWidget {
  const MeditationSetupView({super.key});

  static const routeName = 'meditation_setup';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final meditation = ref.watch(meditationSetupProvider).meditation;

    return Scaffold(
      appBar: AppBar(
        title: const Text(meditationTitle),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                        meditationTypeLabel,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
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
            FilledButton(
              onPressed: () {
                Wakelock.enable();
                ref.read(meditationSetupProvider.notifier).resetDate();
                context.pushNamed(MeditationDuringView.routeName);
                ref.read(healthProvider);
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 16,
                ),
                child: Text(startLabel),
              ),
            ),
            _infoCardWidget(meditation),
          ],
        ),
      ),
    );
  }

  Widget _infoCardWidget(MeditationModel meditation) {
    var message = '';
    if (meditation.type == MeditationType.timed) {
      message = 'Meditate for ${(meditation.goal ?? 300) ~/ 60} minutes.'
          ' Once the session is underway, tap on'
          ' "End Early" if you\'d like to cut your session short; otherwise'
          ' just meditate until the session ends of its own volition.';
    } else {
      message = 'Meditate for as long as you\'d like.'
          ' Once the session is underway, tap on "End Session"'
          ' to mark your meditation as complete.';
    }

    return InfoCardWidget(message: message);
  }
}
