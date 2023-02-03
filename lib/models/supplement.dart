import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:isar/isar.dart';

part 'supplement.g.dart';

@collection
@CopyWith()
class Supplement {
  Id id = Isar.autoIncrement;
  int? placeholder;

  Supplement({
    this.placeholder,
  });
}
