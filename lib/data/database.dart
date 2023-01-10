import 'package:corelate/models/meditation.dart';
import 'package:isar/isar.dart';

class Database {
  const Database(this.isar);

  final Isar isar;

  Future<void> saveMeditation(Meditation meditation) async {
    await isar.writeTxn(() async {
      await isar.meditations.put(meditation);
    });
  }
}
