import 'dart:io';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../services/provider.dart';
import '../../../models/breathwork.dart';
import '../../../models/breathwork_type.dart';
import '../../today/today_c.dart';
import '../wim_hof/wim_hof_c.dart';
import 'breathwork_configure.dart';

part 'breathwork_configure_c.g.dart';

@riverpod
class BreathworkConfigureC extends _$BreathworkConfigureC {
  @override
  BreathworkConfigure build() =>
      BreathworkConfigure(Breathwork(date: DateTime.now()));

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
    Breathwork breathwork;

    if (state.breathwork.type == BreathworkType.four78) {
      // TODO: Save 4-7-8 session
      breathwork = state.breathwork;
    } else {
      final wimHof = ref.watch(wimHofCProvider);
      final rounds = wimHof.holdSeconds.length;
      breathwork = state.breathwork
          .copyWith(holdSecondsPerRound: wimHof.holdSeconds, rounds: rounds);
    }
    state = state.copyWith(breathwork: breathwork);
    ref.read(databaseCProvider.future).then((db) async {
      await db.saveBreathwork(breathwork);

      ref.read(todayCProvider.notifier).loadTodaysActivities();
    });

    if (Platform.isIOS) {
      int elapsed;

      if (breathwork.type == BreathworkType.four78) {
        // TODO: Save 4-7-8 minutes to mindful minutes in apple health
        elapsed = 0;
      } else {
        final wimHof = ref.watch(wimHofCProvider);

        var holdsElapsed = 0;
        for (final hold in wimHof.holdSeconds) {
          holdsElapsed += hold;
        }
        final countsElapsed =
            breathwork.rounds * (breathwork.breathsPerRound * 1.5 * 2.0);
        final inhalesElapsed = breathwork.rounds * 15;

        elapsed = countsElapsed.toInt() + holdsElapsed + inhalesElapsed;
      }

      ref.read(appleMindfulCProvider.future).then((health) async {
        await health.writeMindfulMinutes(
          state.breathwork.date,
          state.breathwork.date.add(Duration(seconds: elapsed)),
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
}
