import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:isar/isar.dart';

part 'water.g.dart';

@embedded
@CopyWith()
class Water {
  int? placeholder;

  Water({
    this.placeholder,
  });
}
