import 'dart:io';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/provider.dart';
import '../../../models/activity.dart';
import '../../../models/breathwork.dart';
import '../../../models/breathwork_type.dart';
import '../wim_hof/wim_hof_c.dart';
import 'breathwork_configure.dart';

part 'breathwork_configure_c.g.dart';

@riverpod
class BreathworkConfigureC extends _$BreathworkConfigureC {
  @override
  BreathworkConfigure build() => BreathworkConfigure(Activity(
        date: DateTime.now(),
        breathwork: Breathwork(holdSecondsPerRound: []),
      ));

  void setType(BreathworkType type) {
    final is478 = type == BreathworkType.four78;
    final rounds = is478 ? 4 : 3;
    final breathsPerRound = is478 ? 0 : 30;

    final breathwork = state.activity.breathwork;
    if (breathwork != null) {
      final breathworkUpdated = breathwork.copyWith(
        type: type,
        rounds: rounds,
        breathsPerRound: breathsPerRound,
        holdSecondsPerRound: is478 ? null : [],
      );
      final activity = state.activity.copyWith(breathwork: breathworkUpdated);
      state = state.copyWith(activity: activity);
    }
  }

  void setRounds(int rounds) {
    final breathwork = state.activity.breathwork;
    if (breathwork != null) {
      final breathworkUpdated = breathwork.copyWith(rounds: rounds);
      final activity = state.activity.copyWith(breathwork: breathworkUpdated);
      state = state.copyWith(activity: activity);
    }
  }

  void setBreathsPerRound(int breathsPerRound) {
    final breathwork = state.activity.breathwork;
    if (breathwork != null) {
      final breathworkUpdated =
          breathwork.copyWith(breathsPerRound: breathsPerRound);
      final activity = state.activity.copyWith(breathwork: breathworkUpdated);
      state = state.copyWith(activity: activity);
    }
  }

  void resetDate() {
    final activity = state.activity.copyWith(date: DateTime.now());
    state = state.copyWith(activity: activity);
  }

  void setRating(double rating) {
    final breathwork = state.activity.breathwork;
    if (breathwork != null) {
      final breathworkUpdated = breathwork.copyWith(rating: rating);
      final activity = state.activity.copyWith(breathwork: breathworkUpdated);
      state = state.copyWith(activity: activity);
    }
  }

  void save() {
    ref.read(databaseCProvider.future).then((db) async {
      final breathwork = state.activity.breathwork;
      if (breathwork != null) {
        final wimHof = ref.watch(wimHofCProvider);
        final breathworkUpdated =
            breathwork.copyWith(holdSecondsPerRound: wimHof.holdSeconds);
        final activity = state.activity.copyWith(breathwork: breathworkUpdated);

        await db.saveActivity(activity);
      }
    });

    final activity = state.activity;
    if (Platform.isIOS) {
      final breathwork = activity.breathwork;
      if (breathwork != null) {
        if (breathwork.type == BreathworkType.four78) {
          // TODO: Save 4-7-8 minutes to mindful minutes in apple health
        } else {
          final wimHof = ref.watch(wimHofCProvider);

          var holdsElapsed = 0;
          for (final hold in wimHof.holdSeconds) {
            holdsElapsed += hold;
          }
          final countsElapsed =
              breathwork.rounds * (breathwork.breathsPerRound * 1.5);
          final inhalesElapsed = breathwork.rounds * 15;

          final elapsed = countsElapsed.toInt() + holdsElapsed + inhalesElapsed;
          ref.read(appleMindfulCProvider.future).then((health) async {
            await health.writeMindfulMinutes(
              activity.date,
              activity.date.add(Duration(seconds: elapsed)),
            );
          });
        }
      }
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
