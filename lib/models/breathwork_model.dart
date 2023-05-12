import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:isar/isar.dart';

import 'activity_model.dart';
import 'breathwork_type.dart';

part 'breathwork_model.g.dart';

@collection
@CopyWith()
class BreathworkModel extends ActivityModel {
  Id id = Isar.autoIncrement;
  @enumerated
  BreathworkType type;
  int rounds;
  int breathsPerRound;
  List<int>? holdSecondsPerRound;
  double? rating;

  BreathworkModel({
    required super.date,
    this.type = BreathworkType.four78,
    this.rounds = 4,
    this.breathsPerRound = 0,
    this.holdSecondsPerRound,
    this.rating,
  });
}
