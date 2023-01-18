import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../models/activity.dart';
import '../../../models/breathwork.dart';
import '../../../models/breathwork_type.dart';
import 'breathwork_configure.dart';

part 'breathwork_configure_c.g.dart';

@riverpod
class BreathworkConfigureC extends _$BreathworkConfigureC {
  @override
  BreathworkConfigure build() => BreathworkConfigure(Activity(
        date: DateTime.now(),
        breathwork: Breathwork(),
      ));

  void setType(BreathworkType type) {
    final rounds = type == BreathworkType.four78 ? 4 : 3;
    final breathsPerRound = type == BreathworkType.four78 ? 0 : 30;

    final breathwork = state.activity.breathwork;
    if (breathwork != null) {
      final breathworkUpdated = breathwork.copyWith(
        type: type,
        rounds: rounds,
        breathsPerRound: breathsPerRound,
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
}
