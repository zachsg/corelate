import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:isar/isar.dart';

part 'grounding.g.dart';

@embedded
@CopyWith()
class Grounding {
  int? placeholder;

  Grounding({
    this.placeholder,
  });
}
