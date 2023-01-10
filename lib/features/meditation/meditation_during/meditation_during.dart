import 'package:copy_with_extension/copy_with_extension.dart';

import '../../../models/meditation.dart';

part 'meditation_during.g.dart';

@CopyWith()
class MeditationDuring {
  Meditation meditation;

  MeditationDuring(this.meditation);
}
