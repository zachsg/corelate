import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:isar/isar.dart';

import 'activity.dart';
import 'meditation_type.dart';

part 'meditation.g.dart';

@collection
@CopyWith()
class Meditation extends Activity {
  Id id = Isar.autoIncrement;
  @enumerated
  MeditationType type;
  int? goal;
  double? rating;
  int elapsed;

  Meditation({
    required super.date,
    super.stress,
    super.mood,
    super.energy,
    this.type = MeditationType.timed,
    this.goal = 300,
    this.rating,
    this.elapsed = 0,
  });
}
