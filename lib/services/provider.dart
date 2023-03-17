import 'package:health/health.dart';
import 'package:isar/isar.dart';
import 'package:mindful_minutes/mindful_minutes.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/breathwork.dart';
import '../models/meditation.dart';
import 'database.dart';

part 'provider.g.dart';

@Riverpod(keepAlive: true)
Future<Isar> isarC(IsarCRef ref) async {
  return await Isar.open([MeditationSchema, BreathworkSchema]);
}

@riverpod
Future<Database> databaseC(DatabaseCRef ref) async {
  final isar = await ref.watch(isarCProvider.future);
  return Database(isar);
}

@Riverpod(keepAlive: true)
Future<HealthFactory> healthC(HealthCRef ref) async {
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
Future<MindfulMinutesPlugin> appleMindfulC(AppleMindfulCRef ref) async {
  final plugin = MindfulMinutesPlugin();

  final bool hasPermission = await plugin.checkPermission();

  if (!hasPermission) {
    await plugin.requestPermission();
  }

  return plugin;
}
