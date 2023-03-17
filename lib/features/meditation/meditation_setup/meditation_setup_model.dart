import 'package:copy_with_extension/copy_with_extension.dart';

import '../../../models/meditation.dart';

part 'meditation_setup_model.g.dart';

@CopyWith()
class MeditationSetupModel {
  Meditation meditation;

  MeditationSetupModel(this.meditation);
}
