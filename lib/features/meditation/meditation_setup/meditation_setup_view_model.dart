import 'package:copy_with_extension/copy_with_extension.dart';

import '../../../models/meditation_model.dart';

part 'meditation_setup_view_model.g.dart';

@CopyWith()
class MeditationSetupViewModel {
  MeditationModel meditation;

  MeditationSetupViewModel(this.meditation);
}
