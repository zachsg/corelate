import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../models/meditation.dart';
import '../../../models/meditation_type.dart';
import 'meditation_configure.dart';

part 'meditation_configure_c.g.dart';

@riverpod
class MeditationConfigureC extends _$MeditationConfigureC {
  @override
  MeditationConfigure build() =>
      MeditationConfigure(Meditation(date: DateTime.now()));

  void setType(MeditationType type) {
    if (type == MeditationType.openEnded) {
      final meditation = state.meditation.copyWith(type: type, goal: null);
      state = state.copyWith(meditation: meditation);
    } else {
      final meditation = state.meditation.copyWith(type: type, goal: 600);
      state = state.copyWith(meditation: meditation);
    }
  }

  void setGoal(int goal) {
    final meditation = state.meditation.copyWith(goal: goal);
    state = state.copyWith(meditation: meditation);
  }
}
