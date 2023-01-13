import 'dart:io';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/provider.dart';
import '../../../models/activity.dart';
import '../../../models/meditation.dart';
import '../meditation_configure/meditation_configure_c.dart';
import 'meditation_during.dart';

part 'meditation_during_c.g.dart';

@riverpod
class MeditationDuringC extends _$MeditationDuringC {
  @override
  MeditationDuring build() {
    final activity = ref.watch(meditationConfigureCProvider).activity;

    return MeditationDuring(activity: activity);
  }

  void setElapsed(int seconds) {
    final meditation = state.activity.meditation!.copyWith(elapsed: seconds);
    final activity = state.activity.copyWith(meditation: meditation);
    state = state.copyWith(activity: activity);
  }

  void updateDate(DateTime date) {
    final activity = state.activity.copyWith(date: date);
    state = state.copyWith(activity: activity);
  }

  void save() {
    ref.read(databaseCProvider.future).then((db) async {
      await db.saveMeditation(state.activity);
    });

    sessionStopped(true);

    final activity = state.activity;
    if (Platform.isIOS) {
      ref.read(appleMindfulCProvider.future).then((health) async {
        await health.writeMindfulMinutes(
          activity.date,
          activity.date.add(Duration(seconds: activity.meditation!.elapsed)),
        );
      });

      // TODO: Currently health plugin crashes trying to save mindfulness (using mindful_minutes plugin instead)
      // ref.read(healthCProvider.future).then((health) async {
      //   final success = await health.writeHealthData(
      //     meditation.elapsed.toDouble(),
      //     HealthDataType.MINDFULNESS,
      //     // meditation.date,
      //     // meditation.date.add(
      //     //   Duration(seconds: meditation.elapsed),
      //     // ),
      //   );
      // });
    }
  }

  void sessionStopped(bool stopped) =>
      state = state.copyWith(sessionStopped: stopped);
}
