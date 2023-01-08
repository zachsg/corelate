import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../meditation_type.dart';
import 'meditation_configure.dart';

part 'meditation_configure_c.g.dart';

@riverpod
class MeditationConfigureC extends _$MeditationConfigureC {
  @override
  MeditationConfigure build() => const MeditationConfigure();

  void setType(MeditationType type) {
    if (type == MeditationType.openEnded) {
      state = state.copyWith(type: type, duration: null);
    } else {
      state = state.copyWith(type: type, duration: 600);
    }
  }

  void setDuration(int duration) => state = state.copyWith(duration: duration);
}
