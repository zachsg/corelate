import 'package:copy_with_extension/copy_with_extension.dart';

import '../../models/activity.dart';

part 'today.g.dart';

@CopyWith()
class Today {
  bool showingToday;
  bool fabExpanded;
  List<Activity> activities;
  DateTime historyDate;

  Today({
    this.showingToday = true,
    this.fabExpanded = false,
    required this.activities,
    required this.historyDate,
  });
}
