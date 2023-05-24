import 'dart:io';

import 'package:health/health.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../services/local_notification_service.dart';
import '../../../services/provider.dart';
import '../../../models/meditation_type.dart';
import '../../../models/meditation_model.dart';
import '../../today/today.dart';
import '../meditation_setup/meditation_setup.dart';
import 'meditation_during_view_model.dart';

part 'meditation_during.g.dart';

@riverpod
class MeditationDuring extends _$MeditationDuring {
  @override
  MeditationDuringViewModel build() {
    final meditation = ref.watch(meditationSetupProvider).meditation;

    return MeditationDuringViewModel(meditation: meditation);
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
    ref.read(databaseProvider.future).then((db) async {
      await db.saveMeditation(state.meditation);

      ref.read(todayProvider.notifier).loadTodaysActivities();
    });

    if (Platform.isIOS) {
      ref.read(healthProvider.future).then((health) async {
        await health.writeHealthData(
          state.meditation.elapsed.toDouble(),
          HealthDataType.MINDFULNESS,
          state.meditation.date,
          state.meditation.date.add(
            Duration(seconds: state.meditation.elapsed),
          ),
        );
      });
    }
  }

  void sessionStopped(bool stopped) {
    state = state.copyWith(sessionStopped: stopped);

    if (state.meditation.type == MeditationType.timed) {
      LocalNotificationService().cancelNotificationWithId(0);
    }
  }
}
