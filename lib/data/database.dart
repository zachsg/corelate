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

  Future<List<Activity>> loadTodaysActivities() async {
    return await isar.writeTxn(() async {
      final date = DateTime.now().copyWith(hour: 0, minute: 0);
      final activities = isar.meditations
          .filter()
          .dateGreaterThan(date)
          .sortByDateDesc()
          .findAll();
      return activities;
    });
  }
}
