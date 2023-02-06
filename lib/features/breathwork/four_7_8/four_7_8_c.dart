import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'four_7_8.dart';

part 'four_7_8_c.g.dart';

@riverpod
class Four78C extends _$Four78C {
  @override
  Four78 build() => Four78();

  void incrementRound() =>
      state = state.copyWith(currentRound: state.currentRound + 1);

  void markDone() => state =
      state.copyWith(isDone: true, currentRound: state.currentRound - 1);
}
