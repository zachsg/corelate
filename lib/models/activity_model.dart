import 'package:isar/isar.dart';

class ActivityModel {
  @Index()
  DateTime date;

  ActivityModel({
    required this.date,
  });
}
