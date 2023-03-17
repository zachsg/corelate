import 'package:copy_with_extension/copy_with_extension.dart';

import '../../../models/breathwork.dart';

part 'breathwork_setup_model.g.dart';

@CopyWith()
class BreathworkSetupModel {
  Breathwork breathwork;

  BreathworkSetupModel(this.breathwork);
}
