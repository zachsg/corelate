import 'package:corelate/models/meditation_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../models/meditation_type.dart';
import 'meditation_setup_view_model.dart';

part 'meditation_setup.g.dart';

@riverpod
class MeditationSetup extends _$MeditationSetup {
  @override
  MeditationSetupViewModel build() =>
      MeditationSetupViewModel(MeditationModel(date: DateTime.now()));

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
