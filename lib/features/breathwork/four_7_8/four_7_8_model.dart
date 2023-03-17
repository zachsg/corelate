import 'package:copy_with_extension/copy_with_extension.dart';

import '../../../models/breathing.dart';

part 'four_7_8_model.g.dart';

@CopyWith()
class Four78Model {
  final Breathing breathing;
  final int currentRound;
  final bool isDone;

  Four78Model({
    this.breathing = Breathing.inhale,
    this.currentRound = 1,
    this.isDone = false,
  });
}
