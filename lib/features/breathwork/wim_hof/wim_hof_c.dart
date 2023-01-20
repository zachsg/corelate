import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'wim_hof.dart';

part 'wim_hof_c.g.dart';

@riverpod
class WimHofC extends _$WimHofC {
  @override
  WimHof build() => WimHof();

  void incrementBreath() =>
      state = state.copyWith(currentBreath: state.currentBreath + 1);
}
