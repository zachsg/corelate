import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:isar/isar.dart';

part 'tag.g.dart';

@embedded
@CopyWith()
class Tag {
  int? placeholder;

  Tag({
    this.placeholder,
  });
}
