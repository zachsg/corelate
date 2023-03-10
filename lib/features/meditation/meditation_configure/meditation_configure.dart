import 'package:copy_with_extension/copy_with_extension.dart';

import '../../../models/meditation.dart';

part 'meditation_configure.g.dart';

@CopyWith()
class MeditationConfigure {
  Meditation meditation;

  MeditationConfigure(this.meditation);
}
