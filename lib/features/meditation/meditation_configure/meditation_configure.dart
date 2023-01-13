import 'package:copy_with_extension/copy_with_extension.dart';

import '../../../models/activity.dart';

part 'meditation_configure.g.dart';

@CopyWith()
class MeditationConfigure {
  Activity activity;

  MeditationConfigure(this.activity);
}
