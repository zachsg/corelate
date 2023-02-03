import 'package:copy_with_extension/copy_with_extension.dart';

import '../../../models/activity.dart';
import '../../../models/breathwork.dart';

part 'breathwork_configure.g.dart';

@CopyWith()
class BreathworkConfigure {
  Breathwork breathwork;

  BreathworkConfigure(this.breathwork);
}
