import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/meditation.dart';
import 'database.dart';

part 'provider.g.dart';

@Riverpod(keepAlive: true)
Future<Isar> isarC(IsarCRef ref) async {
  return await Isar.open([MeditationSchema]);
}

@riverpod
Future<Database> databaseC(DatabaseCRef ref) async {
  final isar = await ref.watch(isarCProvider.future);
  return Database(isar);
}
