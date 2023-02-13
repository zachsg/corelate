import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../models/activity.dart';
import '../../models/breathwork.dart';
import '../../models/meditation.dart';
import '../../services/provider.dart';
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
  Today build() => Today(
      activities: [],
      historyDate: DateTime.now().subtract(const Duration(days: 1)));

  void setFABExpanded(bool isExpanded) =>
      state = state.copyWith(fabExpanded: isExpanded);

  void toggleShowingToday() {
    state = state.copyWith(
      activities: [],
      showingToday: !state.showingToday,
    );

    _resetHistoryDate();
  }

  void deleteActivity({required bool isToday, required Activity activity}) {
    ref.read(databaseCProvider.future).then((db) async {
      if (activity is Meditation) {
        await db.deleteMeditation(activity);
      } else if (activity is Breathwork) {
        await db.deleteBreathwork(activity);
      }

      // isToday
      //     ? loadTodaysActivities()
      //     : loadActivitiesForDate(state.historyDate);
    });
  }

  void _resetHistoryDate() => state = state.copyWith(
      historyDate: DateTime.now().subtract(const Duration(days: 1)));

  void incrementHistoryDate() {
    final date = state.historyDate.add(const Duration(days: 1));

    state = state.copyWith(historyDate: date);

    loadActivitiesForDate(date);
  }

  void decrementHistoryDate() {
    final date = state.historyDate.subtract(const Duration(days: 1));

    state = state.copyWith(historyDate: date);

    loadActivitiesForDate(date);
  }

  Future<void> loadActivitiesForDate(DateTime date) async {
    ref.read(databaseCProvider.future).then((db) async {
      final activities = await db.loadActivitiesForDay(date);
      state = state.copyWith(activities: activities);
    });
  }

  Future<void> loadTodaysActivities() async {
    ref.read(databaseCProvider.future).then((db) async {
      final activities = await db.loadTodaysActivities();
      state = state.copyWith(activities: activities);
    });
  }

  Future<void> loadAllActivities() async {
    ref.read(databaseCProvider.future).then((db) async {
      final activities = await db.loadAllActivities();
      state = state.copyWith(activities: activities);
    });
  }
}

// final todayActivitiesStreamProvider =
//     StreamProvider.autoDispose<List<Activity>>((ref) async* {
//   late Stream<List<Activity>> activitiesStream;
//   await ref.watch(databaseCProvider.future).then((db) async {
//     final date = ref.watch(dateCProvider);
//     activitiesStream = db.todayActivitiesStream(date);
//   });

//   await for (final activities in activitiesStream) {
//     yield activities;
//   }
// });

// final allActivitiesStreamProvider =
//     StreamProvider.autoDispose<List<Activity>>((ref) async* {
//   late Stream<List<Activity>> activitiesStream;
//   await ref.watch(databaseCProvider.future).then((db) async {
//     activitiesStream = db.allActivitiesStream();
//   });

//   await for (final activities in activitiesStream) {
//     yield activities;
//   }
// });
