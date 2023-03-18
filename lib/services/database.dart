import 'package:isar/isar.dart';

import '../models/activity_model.dart';
import '../models/breathwork_model.dart';
import '../models/meditation_model.dart';

class Database {
  const Database(this.isar);

  final Isar isar;

  /// Breathwork
  Future<void> saveBreathwork(BreathworkModel breathwork) async {
    await isar.writeTxn(() async {
      await isar.breathworkModels.put(breathwork);
    });
  }

  Future<void> deleteBreathwork(BreathworkModel breathwork) async {
    await isar.writeTxn(() async {
      await isar.breathworkModels.delete(breathwork.id);
    });
  }

  /// Meditation
  Future<void> saveMeditation(MeditationModel meditation) async {
    await isar.writeTxn(() async {
      await isar.meditationModels.put(meditation);
    });
  }

  Future<void> deleteMeditation(MeditationModel meditation) async {
    await isar.writeTxn(() async {
      await isar.meditationModels.delete(meditation.id);
    });
  }

  /// Activities
  Future<List<ActivityModel>> loadTodaysActivities() async {
    List<ActivityModel> activities = [];

    final date = DateTime.now().copyWith(hour: 0, minute: 0);

    final meditations =
        await isar.meditationModels.where().dateGreaterThan(date).findAll();

    final breathworks =
        await isar.breathworkModels.where().dateGreaterThan(date).findAll();

    activities = [...meditations, ...breathworks]
      ..sort((a1, a2) => a2.date.compareTo(a1.date));

    return activities;
  }

  Future<List<ActivityModel>> loadAllActivities() async {
    List<ActivityModel> activities = [];

    final date = DateTime.now().copyWith(hour: 0, minute: 0);

    final meditations =
        await isar.meditationModels.where().dateLessThan(date).findAll();

    final breathworks =
        await isar.breathworkModels.where().dateLessThan(date).findAll();

    activities = [...meditations, ...breathworks]
      ..sort((a1, a2) => a2.date.compareTo(a1.date));

    return activities;
  }

  Future<List<ActivityModel>> loadActivitiesForDay(DateTime date) async {
    List<ActivityModel> activities = [];

    final dateStart = date.copyWith(hour: 0, minute: 0);
    final dateEnd = dateStart.add(const Duration(hours: 23, minutes: 59));

    final meditations = await isar.meditationModels
        .where()
        .dateBetween(dateStart, dateEnd)
        .findAll();

    final breathworks = await isar.breathworkModels
        .where()
        .dateBetween(dateStart, dateEnd)
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
