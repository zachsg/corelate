import 'package:copy_with_extension/copy_with_extension.dart';

import '../../../models/breathing.dart';

part 'four_7_8.g.dart';

@CopyWith()
class Four78 {
  final Breathing breathing;
  final int currentRound;
  final bool isDone;

  Four78({
    this.breathing = Breathing.inhale,
    this.currentRound = 1,
    this.isDone = false,
  });
}
