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
  int elapsed;

  Meditation({
    required super.date,
    this.type = MeditationType.openEnded,
    this.goal,
    this.elapsed = 0,
  });
}