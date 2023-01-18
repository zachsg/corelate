import 'package:copy_with_extension/copy_with_extension.dart';

import '../../../models/activity.dart';

part 'breathwork_configure.g.dart';

@CopyWith()
class BreathworkConfigure {
  Activity activity;

  BreathworkConfigure(this.activity);
}
