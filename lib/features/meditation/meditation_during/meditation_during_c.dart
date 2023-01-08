import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../meditation_configure/meditation_configure_c.dart';
import 'meditation_during.dart';

part 'meditation_during_c.g.dart';

@riverpod
class MeditationDuringC extends _$MeditationDuringC {
  @override
  MeditationDuring build() {
    final meditationConfiguration = ref.read(meditationConfigureCProvider);
    final type = meditationConfiguration.type;
    final duration = meditationConfiguration.duration;

    return MeditationDuring(type: type, duration: duration);
  }

  void setElapsed(int seconds) => state = state.copyWith(elapsed: seconds);
}
