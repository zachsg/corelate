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
            title: meditationActionTitle,
            icon: Icons.self_improvement,
            onPressed: () {
              ref.read(todayCProvider.notifier).setFABExpanded(!fabIsExpanded);
              context.pushNamed(MeditationConfigureView.routeName);
            },
          ),
          ActionButtonWidget(
            title: breathworkActionTitle,
            icon: Icons.air,
            onPressed: () {
              ref.read(todayCProvider.notifier).setFABExpanded(!fabIsExpanded);
              context.pushNamed(BreathworkConfigureView.routeName);
            },
          ),
          // ActionButtonWidget(
          //   title: journalTitle,
          //   icon: Icons.edit_note,
          //   onPressed: () {},
          // ),
          // ActionButtonWidget(
          //   title: tagTitle,
          //   icon: Icons.sell,
          //   onPressed: () {},
          // ),
          AnimatedRotation(
            turns: fabIsExpanded ? 0.38 : 0,
            duration: const Duration(milliseconds: 250),
            child: Material(
              color: fabIsExpanded
                  ? null
                  : Theme.of(context).colorScheme.primaryContainer,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
              ),
              elevation: fabIsExpanded ? 0 : 6,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Icon(
                  Icons.add,
                  size: 32,
                  color: Theme.of(context).colorScheme.primary,
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
