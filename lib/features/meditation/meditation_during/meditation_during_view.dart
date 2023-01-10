import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../data/provider.dart';
import '../../../helpers/strings.dart';
import '../../../models/meditation_type.dart';
import 'meditation_during_c.dart';
import 'widgets/xwidget.dart';

class MeditationDuringView extends ConsumerWidget {
  const MeditationDuringView({super.key});

  static const routeName = 'meditation_during';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(meditationTitle),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ref.watch(meditationDuringCProvider).meditation.type ==
                  MeditationType.openEnded
              ? const CountUpWidget()
              : const CountDownWidget(),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      // TODO: End session, save session, navigate to Today with new session at top
                      final date = DateTime.now();
                      ref
                          .read(meditationDuringCProvider.notifier)
                          .updateDate(date);

                      final meditation =
                          ref.read(meditationDuringCProvider).meditation;

                      ref.read(databaseCProvider.future).then(
                          (db) async => await db.saveMeditation(meditation));
                    },
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 16,
                      ),
                      child: Text(endEarlyLabel),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: context.pop,
                    child: const Text(cancelLabel),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(),
        ],
      ),
    );
  }
}
