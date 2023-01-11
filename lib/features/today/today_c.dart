import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/provider.dart';
import 'today.dart';

part 'today_c.g.dart';

@riverpod
class TodayC extends _$TodayC {
  @override
  Today build() => Today(activities: []);

  void setFABExpanded(bool isExpanded) =>
      state = state.copyWith(fabExpanded: isExpanded);

  void loadActivities() {
    ref.read(databaseCProvider.future).then((db) async {
      final activities = await db.loadTodaysActivities();
      state = state.copyWith(activities: activities);
    });
  }
}
