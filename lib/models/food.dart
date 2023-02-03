import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:isar/isar.dart';

part 'food.g.dart';

@collection
@CopyWith()
class Food {
  Id id = Isar.autoIncrement;
  int? placeholder;

  Food({
    this.placeholder,
  });
}
