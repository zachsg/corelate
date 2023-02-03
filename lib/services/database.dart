import 'package:isar/isar.dart';

import '../models/activity.dart';
import '../models/breathwork.dart';
import '../models/meditation.dart';

class Database {
  const Database(this.isar);

  final Isar isar;

  /// Breathwork
  Future<void> saveBreathwork(Breathwork breathwork) async {
    await isar.writeTxn(() async {
      await isar.breathworks.put(breathwork);
    });
  }

  Future<void> deleteBreathwork(Breathwork breathwork) async {
    await isar.writeTxn(() async {
      await isar.breathworks.delete(breathwork.id);
    });
  }

  /// Meditation
  Future<void> saveMeditation(Meditation meditation) async {
    await isar.writeTxn(() async {
      await isar.meditations.put(meditation);
    });
  }

  Future<void> deleteMeditation(Meditation meditation) async {
    await isar.writeTxn(() async {
      await isar.meditations.delete(meditation.id);
    });
  }

  /// Activities
  Future<List<Activity>> loadTodaysActivities() async {
    List<Activity> activities = [];

    final date = DateTime.now().copyWith(hour: 0, minute: 0);

    final meditations = await isar.meditations
        .where()
        .dateGreaterThan(date)
        .sortByDateDesc()
        .findAll();

    final breathworks = await isar.breathworks
        .where()
        .dateGreaterThan(date)
        .sortByDateDesc()
        .findAll();

    activities = [...meditations, ...breathworks]
      ..sort((a1, a2) => a2.date.compareTo(a1.date));

    return activities;
  }

  Future<List<Activity>> loadAllActivities() async {
    List<Activity> activities = [];

    final date = DateTime.now().copyWith(hour: 0, minute: 0);

    final meditations = await isar.meditations
        .where()
        .dateLessThan(date)
        .sortByDateDesc()
        .findAll();

    final breathworks = await isar.breathworks
        .where()
        .dateLessThan(date)
        .sortByDateDesc()
        .findAll();

    activities = [...meditations, ...breathworks]
      ..sort((a1, a2) => a2.date.compareTo(a1.date));

    return activities;
  }

  Future<List<Activity>> loadActivitiesForDay(DateTime date) async {
    List<Activity> activities = [];

    final dateStart = date.copyWith(hour: 0, minute: 0);
    final dateEnd = dateStart.add(const Duration(hours: 23, minutes: 59));

    final meditations = await isar.meditations
        .where()
        .dateBetween(dateStart, dateEnd)
        .sortByDateDesc()
        .findAll();

    final breathworks = await isar.breathworks
        .where()
        .dateBetween(dateStart, dateEnd)
        .sortByDateDesc()
        .findAll();

    activities = [...meditations, ...breathworks]
      ..sort((a1, a2) => a2.date.compareTo(a1.date));

    return activities;
  }

  // Stream<List<Activity>> todayActivitiesStream(DateTime date) async* {
  //   final query = isar.activitys
  //       .filter()
  //       .dateGreaterThan(date)
  //       .sortByDateDesc()
  //       .build();

  //   await for (final results in query.watch(fireImmediately: true)) {
  //     yield results;
  //   }
  // }

  // Stream<List<Activity>> allActivitiesStream() async* {
  //   // Show only activities occurring before today
  //   final date = DateTime.now().copyWith(hour: 0, minute: 0);
  //   final query =
  //       isar.activitys.filter().dateLessThan(date).sortByDateDesc().build();

  //   await for (final results in query.watch(fireImmediately: true)) {
  //     if (results.isNotEmpty) {
  //       yield results;
  //     }
  //   }
  // }
}
