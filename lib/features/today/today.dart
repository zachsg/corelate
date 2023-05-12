import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../models/activity_model.dart';
import '../../models/breathwork_model.dart';
import '../../models/meditation_model.dart';
import '../../services/provider.dart';
import 'today_view_model.dart';

part 'today.g.dart';

@riverpod
class Date extends _$Date {
  @override
  DateTime build() => DateTime.now().copyWith(hour: 0, minute: 0);

  void reset() => state = DateTime.now().copyWith(hour: 0, minute: 0);
}

@Riverpod(keepAlive: true)
class Today extends _$Today {
  @override
  TodayViewModel build() => TodayViewModel(
        activities: [],
        historyDate: DateTime.now().subtract(const Duration(days: 1)),
      );

  void setFABExpanded(bool isExpanded) =>
      state = state.copyWith(fabExpanded: isExpanded);

  void toggleShowingToday() {
    state = state.copyWith(
      activities: [],
      showingToday: !state.showingToday,
    );

    _resetHistoryDate();
  }

  void deleteActivity(
      {required bool isToday, required ActivityModel activity}) {
    ref.read(databaseProvider.future).then((db) async {
      if (activity is MeditationModel) {
        await db.deleteMeditation(activity);
      } else if (activity is BreathworkModel) {
        await db.deleteBreathwork(activity);
      }
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
    ref.read(databaseProvider.future).then((db) async {
      final activities = await db.loadActivitiesForDay(date);
      state = state.copyWith(activities: activities);
    });
  }

  Future<void> loadTodaysActivities() async {
    ref.read(databaseProvider.future).then((db) async {
      final activities = await db.loadTodaysActivities();
      state = state.copyWith(activities: activities);
    });
  }

  Future<void> loadAllActivities() async {
    ref.read(databaseProvider.future).then((db) async {
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
