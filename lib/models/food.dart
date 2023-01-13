import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:isar/isar.dart';

part 'food.g.dart';

@embedded
@CopyWith()
class Food {
  int? placeholder;

  Food({
    this.placeholder,
  });
}
