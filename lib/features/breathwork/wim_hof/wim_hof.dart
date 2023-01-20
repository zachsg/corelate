import 'package:copy_with_extension/copy_with_extension.dart';

part 'wim_hof.g.dart';

@CopyWith()
class WimHof {
  final int currentBreath;
  final int currentRound;

  WimHof({this.currentRound = 0, this.currentBreath = 0});
}
