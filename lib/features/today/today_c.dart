import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/provider.dart';
import '../../models/activity.dart';
import 'today.dart';

part 'today_c.g.dart';

@Riverpod(keepAlive: true)
class TodayC extends _$TodayC {
  @override
  Today build() => Today(activities: []);

  void setFABExpanded(bool isExpanded) =>
      state = state.copyWith(fabExpanded: isExpanded);

  void toggleShowingToday() {
    state.showingToday ? loadAllActivities() : loadTodaysActivities();

    state = state.copyWith(showingToday: !state.showingToday);
  }

  void loadTodaysActivities() {
    ref.read(databaseCProvider.future).then((db) async {
      final activities = await db.loadTodaysActivities();
      state = state.copyWith(activities: activities);
    });
  }

  void loadAllActivities() {
    ref.read(databaseCProvider.future).then((db) async {
      final activities = await db.loadAllActivities();
      state = state.copyWith(activities: activities);
    });
  }
}

final todayActivitiesStreamProvider =
    StreamProvider.autoDispose<List<Activity>>((ref) async* {
  late Stream<List<Activity>> activitiesStream;
  await ref.watch(databaseCProvider.future).then((db) async {
    activitiesStream = db.todayActivitiesStream();
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
