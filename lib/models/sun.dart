import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:isar/isar.dart';

part 'sun.g.dart';

@collection
@CopyWith()
class Sun {
  Id id = Isar.autoIncrement;
  int? placeholder;

  Sun({
    this.placeholder,
  });
}
