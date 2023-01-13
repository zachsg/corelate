import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:isar/isar.dart';

part 'workout.g.dart';

@embedded
@CopyWith()
class Workout {
  int? placeholder;

  Workout({
    this.placeholder,
  });
}
