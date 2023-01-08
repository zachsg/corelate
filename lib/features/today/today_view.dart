import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../helpers/strings.dart';
import 'widgets/expanded_floating_action_button_widget.dart';
import 'today_c.dart';

class TodayView extends ConsumerWidget {
  const TodayView({super.key});

  static const routeName = 'today';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(todayLabel),
      ),
      body: Stack(
        children: [
          ListView(
            children: const [
              Card(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 72),
                  child: Text('i am a card'),
                ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 72),
                  child: Text('i am a card'),
                ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 72),
                  child: Text('i am a card'),
                ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 72),
                  child: Text('i am a card'),
                ),
              )
            ],
          ),
          if (ref.watch(todayCProvider).fabExpanded)
            Positioned.fill(
              child: GestureDetector(
                onTap: () =>
                    ref.read(todayCProvider.notifier).setFABExpanded(false),
                child: Container(
                  color:
                      Theme.of(context).colorScheme.background.withOpacity(0.8),
                ),
              ),
            ),
        ],
      ),
      floatingActionButton: const ExpandedFloatingActionButtonWidget(),
    );
  }
}
