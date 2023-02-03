import 'dart:io';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../services/local_notification_service.dart';
import '../../../services/provider.dart';
import '../../../models/meditation.dart';
import '../../../models/meditation_type.dart';
import '../../today/today_c.dart';
import '../meditation_configure/meditation_configure_c.dart';
import 'meditation_during.dart';

part 'meditation_during_c.g.dart';

@riverpod
class MeditationDuringC extends _$MeditationDuringC {
  @override
  MeditationDuring build() {
    final meditation = ref.watch(meditationConfigureCProvider).meditation;

    return MeditationDuring(meditation: meditation);
  }

  void setElapsed(int seconds) {
    final meditation = state.meditation.copyWith(elapsed: seconds);
    state = state.copyWith(meditation: meditation);
  }

  void setRating(double rating) {
    final meditation = state.meditation.copyWith(rating: rating);
    state = state.copyWith(meditation: meditation);
  }

  void updateDate(DateTime date) {
    final meditation = state.meditation.copyWith(date: date);
    state = state.copyWith(meditation: meditation);
  }

  void save() {
    ref.read(databaseCProvider.future).then((db) async {
      await db.saveMeditation(state.meditation);

      ref.read(todayCProvider.notifier).loadTodaysActivities();
    });

    if (Platform.isIOS) {
      ref.read(appleMindfulCProvider.future).then((health) async {
        await health.writeMindfulMinutes(
          state.meditation.date,
          state.meditation.date
              .add(Duration(seconds: state.meditation.elapsed)),
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

  void sessionStopped(bool stopped) {
    state = state.copyWith(sessionStopped: stopped);

    if (state.meditation.type == MeditationType.timed) {
      LocalNotificationService().cancelNotificationWithId(0);
    }
  }
}
