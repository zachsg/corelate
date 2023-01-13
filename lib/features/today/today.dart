import 'package:copy_with_extension/copy_with_extension.dart';

part 'today.g.dart';

@CopyWith()
class Today {
  bool showingToday;
  bool fabExpanded;

  Today({
    this.showingToday = true,
    this.fabExpanded = false,
  });
}
