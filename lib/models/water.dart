import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:isar/isar.dart';

part 'water.g.dart';

@collection
@CopyWith()
class Water {
  Id id = Isar.autoIncrement;
  int? placeholder;

  Water({
    this.placeholder,
  });
}
