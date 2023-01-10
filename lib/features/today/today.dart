import 'package:copy_with_extension/copy_with_extension.dart';

part 'today.g.dart';

@CopyWith()
class Today {
  bool fabExpanded;

  Today({this.fabExpanded = false});
}
