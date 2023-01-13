import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:isar/isar.dart';

part 'supplement.g.dart';

@embedded
@CopyWith()
class Supplement {
  int? placeholder;

  Supplement({
    this.placeholder,
  });
}
