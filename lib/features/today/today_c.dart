import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'today.dart';

part 'today_c.g.dart';

@riverpod
class TodayC extends _$TodayC {
  @override
  Today build() => const Today();

  void setFABExpanded(bool isExpanded) =>
      state = state.copyWith(fabExpanded: isExpanded);
}
