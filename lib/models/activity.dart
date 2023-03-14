import 'package:isar/isar.dart';

class Activity {
  @Index()
  DateTime date;
  int stress;
  int mood;
  int energy;

  Activity({
    required this.date,
    this.stress = 0,
    this.mood = 0,
    this.energy = 0,
  });
}
