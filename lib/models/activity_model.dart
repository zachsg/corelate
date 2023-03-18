
import 'package:isar/isar.dart';

class ActivityModel {
  @Index()
  DateTime date;
  int stress;
  int mood;
  int energy;

  ActivityModel({
    required this.date,
    this.stress = 0,
    this.mood = 0,
    this.energy = 0,
  });
}
