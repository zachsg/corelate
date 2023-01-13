import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:isar/isar.dart';

part 'sun.g.dart';

@embedded
@CopyWith()
class Sun {
  int? placeholder;

  Sun({
    this.placeholder,
  });
}
