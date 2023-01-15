import 'package:isar/isar.dart';

import '../models/activity.dart';

class Database {
  const Database(this.isar);

  final Isar isar;

  Future<void> saveActivity(Activity activity) async {
    await isar.writeTxn(() async {
      await isar.activitys.put(activity);
    });
  }

  Future<void> deleteActivity(Activity activity) async {
    await isar.writeTxn(() async {
      await isar.activitys.delete(activity.id);
    });
  }

  Future<List<Activity>> loadTodaysActivities() async {
    final List<Activity> activities = [];

    // Get today's meditations
    final date = DateTime.now().copyWith(hour: 0, minute: 0);
    final meditations = await isar.activitys
        .filter()
        .dateGreaterThan(date)
        .sortByDateDesc()
        .findAll();

    activities.addAll(meditations);

    return activities;
  }

  Future<List<Activity>> loadAllActivities() async {
    final List<Activity> activities = [];

    // Get all meditations
    final date = DateTime.now();
    final meditations = await isar.activitys
        .filter()
        .dateLessThan(date)
        .sortByDateDesc()
        .findAll();

    activities.addAll(meditations);

    return activities;
  }

  Stream<List<Activity>> todayActivitiesStream() async* {
    final date = DateTime.now().copyWith(hour: 0, minute: 0);
    final query =
        isar.activitys.filter().dateGreaterThan(date).sortByDateDesc().build();

    await for (final results in query.watch(fireImmediately: true)) {
      yield results;
    }
  }

  Stream<List<Activity>> allActivitiesStream() async* {
    // Show only activities occurring before today
    final date = DateTime.now().copyWith(hour: 0, minute: 0);
    final query =
        isar.activitys.filter().dateLessThan(date).sortByDateDesc().build();

    await for (final results in query.watch(fireImmediately: true)) {
      if (results.isNotEmpty) {
        yield results;
      }
    }
  }
}
