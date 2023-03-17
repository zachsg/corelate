import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'wim_hof_model.dart';

part 'wim_hof.g.dart';

@riverpod
class WimHof extends _$WimHof {
  @override
  WimHofModel build() => WimHofModel(holdSeconds: []);

  void incrementBreath() =>
      state = state.copyWith(currentBreath: state.currentBreath + 1);

  void resetBreath() => state = state.copyWith(currentBreath: 0);

  void reset() => state = WimHofModel(holdSeconds: []);

  void toggleIsInhaling() =>
      state = state.copyWith(isInhaling: !state.isInhaling);

  void incrementRound() {
    _setHoldSeconds(state.holdSecondsCurrentRound);

    state = state.copyWith(
      currentRound: state.currentRound + 1,
      currentBreath: 0,
      holdSecondsCurrentRound: 0,
      isHoldingExhale: false,
      isHoldingInhale: false,
    );
  }

  void setHoldingExhale(bool holding) => state = state.copyWith(
        isHoldingExhale: holding,
        isHoldingInhale: !holding,
        isInhaling: false,
      );

  void setHoldSecondsCurrentRount(int seconds) =>
      state = state.copyWith(holdSecondsCurrentRound: seconds);

  void _setHoldSeconds(int seconds) {
    final holdSeconds = [...state.holdSeconds, seconds];
    state = state.copyWith(holdSeconds: holdSeconds);
  }

  void markDone() => state = state.copyWith(isDone: true);
}
