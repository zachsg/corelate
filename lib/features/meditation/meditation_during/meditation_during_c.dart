import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../models/meditation.dart';
import '../meditation_configure/meditation_configure_c.dart';
import 'meditation_during.dart';

part 'meditation_during_c.g.dart';

@riverpod
class MeditationDuringC extends _$MeditationDuringC {
  @override
  MeditationDuring build() {
    final meditation = ref.watch(meditationConfigureCProvider).meditation;
    final type = meditation.type;
    final goal = meditation.goal;

    return MeditationDuring(
      Meditation(date: DateTime.now(), type: type, goal: goal),
    );
  }

  void setElapsed(int seconds) {
    final meditation = state.meditation.copyWith(elapsed: seconds);
    state = state.copyWith(meditation: meditation);
  }

  void updateDate(DateTime date) {
    final meditation = state.meditation.copyWith(date: date);
    state = state.copyWith(meditation: meditation);
  }
}
