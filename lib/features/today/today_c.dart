import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../services/provider.dart';
import '../../models/activity.dart';
import 'today.dart';

part 'today_c.g.dart';

@riverpod
class DateC extends _$DateC {
  @override
  DateTime build() => DateTime.now().copyWith(hour: 0, minute: 0);

  void reset() => state = DateTime.now().copyWith(hour: 0, minute: 0);
}

@Riverpod(keepAlive: true)
class TodayC extends _$TodayC {
  @override
  Today build() => Today();

  void setFABExpanded(bool isExpanded) =>
      state = state.copyWith(fabExpanded: isExpanded);

  void toggleShowingToday() =>
      state = state.copyWith(showingToday: !state.showingToday);

  void deleteActivity(Activity activity) {
    ref.read(databaseCProvider.future).then((db) async {
      await db.deleteActivity(activity);
    });
  }
}

final todayActivitiesStreamProvider =
    StreamProvider.autoDispose<List<Activity>>((ref) async* {
  late Stream<List<Activity>> activitiesStream;
  await ref.watch(databaseCProvider.future).then((db) async {
    final date = ref.watch(dateCProvider);
    activitiesStream = db.todayActivitiesStream(date);
  });

  await for (final activities in activitiesStream) {
    yield activities;
  }
});

final allActivitiesStreamProvider =
    StreamProvider.autoDispose<List<Activity>>((ref) async* {
  late Stream<List<Activity>> activitiesStream;
  await ref.watch(databaseCProvider.future).then((db) async {
    activitiesStream = db.allActivitiesStream();
  });

  await for (final activities in activitiesStream) {
    yield activities;
  }
});
