import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:isar/isar.dart';

part 'workout.g.dart';

@collection
@CopyWith()
class Workout {
  Id id = Isar.autoIncrement;
  int? placeholder;

  Workout({
    this.placeholder,
  });
}
