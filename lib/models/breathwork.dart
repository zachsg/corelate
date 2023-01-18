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

  double? rating;

  Breathwork({
    this.type = BreathworkType.four78,
    this.rounds = 8,
    this.breathsPerRound = 0,
  });
}
