import 'package:health/health.dart';
import 'package:isar/isar.dart';
import 'package:mindful_minutes/mindful_minutes.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/breathwork_model.dart';
import '../models/meditation_model.dart';
import 'database.dart';

part 'provider.g.dart';

@Riverpod(keepAlive: true)
Future<Isar> isar(IsarRef ref) async {
  final dir = await getApplicationDocumentsDirectory();
  return await Isar.open(
    [MeditationModelSchema, BreathworkModelSchema],
    directory: dir.path,
  );
}

@riverpod
Future<Database> database(DatabaseRef ref) async {
  final isar = await ref.watch(isarProvider.future);
  return Database(isar);
}

@Riverpod(keepAlive: true)
Future<HealthFactory> health(HealthRef ref) async {
  final health = HealthFactory();

  final types = [
    HealthDataType.MINDFULNESS,
    HealthDataType.STEPS,
    HealthDataType.SLEEP_IN_BED,
    HealthDataType.HEART_RATE,
  ];

  bool requested = await health.requestAuthorization(types);
  if (requested) {
    var permissions = [
      HealthDataAccess.READ_WRITE,
      HealthDataAccess.READ,
      HealthDataAccess.READ,
      HealthDataAccess.READ,
    ];
    await health.requestAuthorization(types, permissions: permissions);
  }

  return health;
}

@Riverpod(keepAlive: true)
Future<MindfulMinutesPlugin> appleMindful(AppleMindfulRef ref) async {
  final plugin = MindfulMinutesPlugin();

  final bool hasPermission = await plugin.checkPermission();

  if (!hasPermission) {
    await plugin.requestPermission();
  }

  return plugin;
}
