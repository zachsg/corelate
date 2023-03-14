import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:isar/isar.dart';

import 'activity.dart';
import 'breathwork_type.dart';

part 'breathwork.g.dart';

@collection
@CopyWith()
class Breathwork extends Activity {
  Id id = Isar.autoIncrement;
  @enumerated
  BreathworkType type;
  int rounds;
  int breathsPerRound;
  List<int>? holdSecondsPerRound;
  double? rating;

  Breathwork({
    required super.date,
    super.stress,
    super.mood,
    super.energy,
    this.type = BreathworkType.four78,
    this.rounds = 4,
    this.breathsPerRound = 0,
    this.holdSecondsPerRound,
    this.rating,
  });
}
