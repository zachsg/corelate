import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:isar/isar.dart';

import 'meditation_type.dart';

part 'meditation.g.dart';

@embedded
@CopyWith()
class Meditation {
  @enumerated
  MeditationType type;
  int? goal;
  int elapsed;

  Meditation({
    this.type = MeditationType.openEnded,
    this.goal,
    this.elapsed = 0,
  });
}
