import 'package:corelate/models/meditation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../models/meditation_type.dart';
import 'meditation_configure.dart';

part 'meditation_configure_c.g.dart';

@riverpod
class MeditationConfigureC extends _$MeditationConfigureC {
  @override
  MeditationConfigure build() =>
      MeditationConfigure(Meditation(date: DateTime.now()));

  void setType(MeditationType type) {
    final goal = type == MeditationType.openEnded ? null : 600;

    final meditation = state.meditation.copyWith(type: type, goal: goal);
    state = state.copyWith(meditation: meditation);
  }

  void setGoal(int goal) {
    final meditation = state.meditation.copyWith(goal: goal);
    state = state.copyWith(meditation: meditation);
  }

  void resetDate() {
    final meditation = state.meditation.copyWith(date: DateTime.now());
    state = state.copyWith(meditation: meditation);
  }
}
