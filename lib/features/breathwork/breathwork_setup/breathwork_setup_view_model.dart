import 'package:copy_with_extension/copy_with_extension.dart';

import '../../../models/breathwork_model.dart';

part 'breathwork_setup_view_model.g.dart';

@CopyWith()
class BreathworkSetupViewModel {
  BreathworkModel breathwork;

  BreathworkSetupViewModel(this.breathwork);
}
