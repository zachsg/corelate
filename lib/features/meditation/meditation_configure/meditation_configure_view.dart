import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../helpers/strings.dart';
import '../meditation_during/meditation_during_view.dart';
import '../meditation_type.dart';
import 'meditation_configure_c.dart';
import 'widgets/xwidgets.dart';

class MeditationConfigureView extends ConsumerWidget {
  const MeditationConfigureView({super.key});

  static const routeName = 'meditation_configure';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
          if (ref.watch(meditationConfigureCProvider).type ==
              MeditationType.timed)
            Column(
              children: [
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(durationLabel),
                    SizedBox(width: 8),
                    MeditationDurationDropdownButtonWidget()
                  ],
                ),
              ],
            ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () => context.goNamed(MeditationDuringView.routeName),
            child: const Text(startLabel),
          ),
        ],
      ),
    );
  }
}
