import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:isar/isar.dart';

import 'breathwork_type.dart';

part 'breathwork.g.dart';

@embedded
@CopyWith()
class Breathwork {
  @enumerated
  BreathworkType type;
  int rounds;
  int breathsPerRound;
  List<int>? holdSecondsPerRound;
  double? rating;

  Breathwork({
    this.type = BreathworkType.four78,
    this.rounds = 4,
    this.breathsPerRound = 0,
    this.holdSecondsPerRound,
    this.rating,
  });
}
