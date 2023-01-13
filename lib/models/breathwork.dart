import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:isar/isar.dart';

part 'breathwork.g.dart';

@embedded
@CopyWith()
class Breathwork {
  int? placeholder;

  Breathwork({
    this.placeholder,
  });
}
