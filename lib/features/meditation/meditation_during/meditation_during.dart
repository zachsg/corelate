import 'package:copy_with_extension/copy_with_extension.dart';

import '../../../models/activity.dart';

part 'meditation_during.g.dart';

@CopyWith()
class MeditationDuring {
  Activity activity;
  bool sessionStopped;

  MeditationDuring({required this.activity, this.sessionStopped = false});
}
