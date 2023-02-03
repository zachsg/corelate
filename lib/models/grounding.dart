import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:isar/isar.dart';

part 'grounding.g.dart';

@collection
@CopyWith()
class Grounding {
  Id id = Isar.autoIncrement;
  int? placeholder;

  Grounding({
    this.placeholder,
  });
}
