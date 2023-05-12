import 'package:copy_with_extension/copy_with_extension.dart';

import '../../models/activity_model.dart';

part 'today_view_model.g.dart';

@CopyWith()
class TodayViewModel {
  bool showingToday;
  bool fabExpanded;
  List<ActivityModel> activities;
  DateTime historyDate;

  TodayViewModel({
    this.showingToday = true,
    this.fabExpanded = false,
    required this.activities,
    required this.historyDate,
  });
}
