import 'dart:io';

import 'package:corelate/features/breathwork/four_7_8/four_7_8.dart';
import 'package:health/health.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../services/provider.dart';
import '../../../models/breathwork_model.dart';
import '../../../models/breathwork_type.dart';
import '../../today/today.dart';
import '../wim_hof/wim_hof.dart';
import 'breathwork_setup_view_model.dart';

part 'breathwork_setup.g.dart';

@riverpod
class BreathworkSetup extends _$BreathworkSetup {
  @override
  BreathworkSetupViewModel build() =>
      BreathworkSetupViewModel(BreathworkModel(date: DateTime.now()));

  void setType(BreathworkType type) {
    final is478 = type == BreathworkType.four78;
    final rounds = is478 ? 4 : 3;
    final breathsPerRound = is478 ? 0 : 30;

    final breathwork = state.breathwork.copyWith(
      type: type,
      rounds: rounds,
      breathsPerRound: breathsPerRound,
      holdSecondsPerRound: is478 ? null : [],
    );
    state = state.copyWith(breathwork: breathwork);
  }

  void setRounds(int rounds) {
    final breathwork = state.breathwork.copyWith(rounds: rounds);
    state = state.copyWith(breathwork: breathwork);
  }

  void setBreathsPerRound(int breathsPerRound) {
    final breathwork =
        state.breathwork.copyWith(breathsPerRound: breathsPerRound);
    state = state.copyWith(breathwork: breathwork);
  }

  void resetDate() {
    final breathwork = state.breathwork.copyWith(date: DateTime.now());
    state = state.copyWith(breathwork: breathwork);
  }

  void setRating(double rating) {
    final breathwork = state.breathwork.copyWith(rating: rating);
    state = state.copyWith(breathwork: breathwork);
  }

  void save() {
    BreathworkModel breathwork;

    if (state.breathwork.type == BreathworkType.four78) {
      // TODO: Save 4-7-8 session
      final four78 = ref.watch(four78Provider);
      breathwork = state.breathwork.copyWith(
        rounds: four78.currentRound,
      );
    } else {
      final wimHof = ref.watch(wimHofProvider);
      final rounds = wimHof.holdSeconds.length;
      breathwork = state.breathwork.copyWith(
        holdSecondsPerRound: wimHof.holdSeconds,
        rounds: rounds,
      );
    }
    state = state.copyWith(breathwork: breathwork);
    ref.read(databaseProvider.future).then((db) async {
      await db.saveBreathwork(breathwork);

      ref.read(todayProvider.notifier).loadTodaysActivities();
    });

    if (Platform.isIOS) {
      int elapsed;

      if (breathwork.type == BreathworkType.four78) {
        final four78 = ref.watch(four78Provider);
        elapsed = four78.currentRound * 14;
      } else {
        final wimHof = ref.watch(wimHofProvider);

        var holdsElapsed = 0;
        for (final hold in wimHof.holdSeconds) {
          holdsElapsed += hold;
        }
        final countsElapsed =
            breathwork.rounds * (breathwork.breathsPerRound * 1.5 * 2.0);
        final inhalesElapsed = breathwork.rounds * 15;

        elapsed = countsElapsed.toInt() + holdsElapsed + inhalesElapsed;
      }

      ref.read(healthProvider.future).then((health) async {
        await health.writeHealthData(
          elapsed.toDouble(),
          HealthDataType.MINDFULNESS,
          state.breathwork.date,
          state.breathwork.date.add(Duration(seconds: elapsed)),
        );
      });
    }
  }
}
