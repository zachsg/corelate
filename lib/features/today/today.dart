import 'package:copy_with_extension/copy_with_extension.dart';

import '../../models/activity.dart';

part 'today.g.dart';

@CopyWith()
class Today {
  List<Activity> activities;
  bool showingToday;
  bool fabExpanded;

  Today({
    required this.activities,
    this.showingToday = true,
    this.fabExpanded = false,
  });
}
