import 'package:copy_with_extension/copy_with_extension.dart';

part 'wim_hof_view_model.g.dart';

@CopyWith()
class WimHofViewModel {
  final int currentBreath;
  final int currentRound;
  final bool isInhaling;
  final bool isHoldingExhale;
  final bool isHoldingInhale;
  final bool isDone;
  final int holdSecondsCurrentRound;
  final List<int> holdSeconds;

  WimHofViewModel({
    this.currentRound = 1,
    this.currentBreath = 0,
    this.isInhaling = false,
    this.isHoldingExhale = false,
    this.isHoldingInhale = false,
    this.isDone = false,
    this.holdSecondsCurrentRound = 0,
    required this.holdSeconds,
  });
}
