import 'package:corelate/models/meditation.dart';
import 'package:isar/isar.dart';

import '../models/activity.dart';

class Database {
  const Database(this.isar);

  final Isar isar;

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

  Future<List<Activity>> loadTodaysActivities() async {
    final List<Activity> activities = [];

    // Get today's meditations
    final date = DateTime.now().copyWith(hour: 0, minute: 0);
    final meditations = await isar.meditations
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
    final meditations = await isar.meditations
        .filter()
        .dateLessThan(date)
        .sortByDateDesc()
        .findAll();

    activities.addAll(meditations);

    return activities;
  }
}
