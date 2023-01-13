import 'package:corelate/models/meditation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../models/activity.dart';
import '../../../models/meditation_type.dart';
import 'meditation_configure.dart';

part 'meditation_configure_c.g.dart';

@riverpod
class MeditationConfigureC extends _$MeditationConfigureC {
  @override
  MeditationConfigure build() => MeditationConfigure(Activity(
        date: DateTime.now(),
        meditation: Meditation(),
      ));

  void setType(MeditationType type) {
    final goal = type == MeditationType.openEnded ? null : 600;
    final meditation =
        state.activity.meditation!.copyWith(type: type, goal: goal);
    final activity = state.activity.copyWith(meditation: meditation);
    state = state.copyWith(activity: activity);
  }

  void setGoal(int goal) {
    final meditation = state.activity.meditation!.copyWith(goal: goal);
    final activity = state.activity.copyWith(meditation: meditation);
    state = state.copyWith(activity: activity);
  }

  void resetDate() {
    final activity = state.activity.copyWith(date: DateTime.now());
    state = state.copyWith(activity: activity);
  }
}
