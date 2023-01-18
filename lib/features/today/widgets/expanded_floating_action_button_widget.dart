import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../helpers/strings.dart';
import '../../breathwork/breathwork_configure/breathwork_configure_view.dart';
import '../../meditation/meditation_configure/meditation_configure_view.dart';
import 'action_button_widget.dart';
import '../today_c.dart';

class ExpandedFloatingActionButtonWidget extends ConsumerWidget {
  const ExpandedFloatingActionButtonWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fabIsExpanded = ref.watch(todayCProvider).fabExpanded;

    final fab = GestureDetector(
      onTap: () =>
          ref.read(todayCProvider.notifier).setFABExpanded(!fabIsExpanded),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          ActionButtonWidget(
            title: meditationTitle,
            icon: Icons.self_improvement,
            onPressed: () {
              ref.read(todayCProvider.notifier).setFABExpanded(!fabIsExpanded);
              context.pushNamed(MeditationConfigureView.routeName);
            },
          ),
          ActionButtonWidget(
            title: breathworkTitle,
            icon: Icons.air,
            onPressed: () {
              ref.read(todayCProvider.notifier).setFABExpanded(!fabIsExpanded);
              context.pushNamed(BreathworkConfigureView.routeName);
            },
          ),
          ActionButtonWidget(
            title: journalTitle,
            icon: Icons.edit_note,
            onPressed: () {},
          ),
          ActionButtonWidget(
            title: tagTitle,
            icon: Icons.sell,
            onPressed: () {},
          ),
          AnimatedRotation(
            turns: fabIsExpanded ? 0.38 : 0,
            duration: const Duration(milliseconds: 250),
            child: Material(
              shape: const CircleBorder(),
              elevation: fabIsExpanded ? 0 : 8,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: fabIsExpanded
                      ? null
                      : Theme.of(context).colorScheme.primaryContainer,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.add,
                    size: 28,
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );

    return fab;
  }
}
