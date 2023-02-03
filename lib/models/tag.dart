import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:isar/isar.dart';

part 'tag.g.dart';

@collection
@CopyWith()
class Tag {
  Id id = Isar.autoIncrement;
  int? placeholder;

  Tag({
    this.placeholder,
  });
}
