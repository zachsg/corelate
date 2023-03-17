import 'package:copy_with_extension/copy_with_extension.dart';

import '../../models/activity.dart';

part 'today_model.g.dart';

@CopyWith()
class TodayModel {
  bool showingToday;
  bool fabExpanded;
  List<Activity> activities;
  DateTime historyDate;

  TodayModel({
    this.showingToday = true,
    this.fabExpanded = false,
    required this.activities,
    required this.historyDate,
  });
}
