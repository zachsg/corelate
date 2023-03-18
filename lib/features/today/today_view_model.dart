import 'package:copy_with_extension/copy_with_extension.dart';

import '../../models/activity_model.dart';

part 'today_view_model.g.dart';

@CopyWith()
class TodayViewModel {
  bool showingToday;
  bool fabExpanded;
  int steps;
  int sleepMinutes;
  List<ActivityModel> activities;
  DateTime historyDate;

  TodayViewModel({
    this.showingToday = true,
    this.fabExpanded = false,
    this.steps = 0,
    this.sleepMinutes = 0,
    required this.activities,
    required this.historyDate,
  });
}
