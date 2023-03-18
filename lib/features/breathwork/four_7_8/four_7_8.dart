import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'four_7_8_view_model.dart';

part 'four_7_8.g.dart';

@riverpod
class Four78 extends _$Four78 {
  @override
  Four78ViewModel build() => Four78ViewModel();

  void incrementRound() =>
      state = state.copyWith(currentRound: state.currentRound + 1);

  void markDone() => state =
      state.copyWith(isDone: true, currentRound: state.currentRound - 1);
}
