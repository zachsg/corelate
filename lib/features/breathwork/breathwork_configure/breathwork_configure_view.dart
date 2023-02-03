import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:wakelock/wakelock.dart';

import '../../../services/provider.dart';
import '../../../helpers/strings.dart';
import '../../../models/breathwork.dart';
import '../../../models/breathwork_type.dart';
import '../../widgets/xwidgets.dart';
import '../four_7_8/four_7_8_view.dart';
import '../wim_hof/wim_hof_view.dart';
import 'breathwork_configure_c.dart';
import 'widgets/xwidgets.dart';

class BreathworkConfigureView extends ConsumerWidget {
  const BreathworkConfigureView({super.key});

  static const routeName = 'breathwork_configure';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final breathwork = ref.watch(breathworkConfigureCProvider).breathwork;

    return Scaffold(
      appBar: AppBar(
        title: const Text(breathworkTitle),
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
                        breathworkTypeLabel,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const BreathworkTypeDropdownButtonWidget(),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 32.0),
                  child: Divider(),
                ),
              ],
            ),
            breathwork.type == BreathworkType.four78
                ? const Four78ConfigureWidget()
                : const WimHofConfigureWidget(),
            const SizedBox(height: 32),
            FilledButton(
              onPressed: () {
                final is478 =
                    ref.read(breathworkConfigureCProvider).breathwork.type ==
                        BreathworkType.four78;
                Wakelock.enable();
                ref.read(breathworkConfigureCProvider.notifier).resetDate();
                context.pushNamed(
                    is478 ? Four78View.routeName : WimHofView.routeName);
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
            _infoCardWidget(breathwork),
          ],
        ),
      ),
    );
  }

  Widget _infoCardWidget(Breathwork breathwork) {
    var message = '';
    if (breathwork.type == BreathworkType.four78) {
      message = '4-7-8 breathing is amazing for reducing anxiety and producing'
          ' calm/blissful feelings.\n\nBreathe in through the nose for a count'
          ' of 4, hold for a count of 7, and exhale audibly through the mouth'
          ' for a count of 8. Repeat this cycle for'
          ' ${breathwork.rounds} rounds.';
    } else {
      message = 'The Wim Hof Method was created by the Iceman, Wim Hof. This is'
          ' an energizing technique.\n\nBreathe fully in and out through the'
          ' nose rapidly for ${breathwork.breathsPerRound} breaths, followed'
          ' by a full exhale and a hold once the lungs are empty for as long'
          ' as you can do so comfortably. Then take a full breath in and hold'
          ' for a count of 15 seconds. Repeat the cycle for'
          ' ${breathwork.rounds} rounds.';
    }

    return InfoCardWidget(message: message);
  }
}
