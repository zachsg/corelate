import 'package:copy_with_extension/copy_with_extension.dart';

import '../../../models/meditation_model.dart';

part 'meditation_during_view_model.g.dart';

@CopyWith()
class MeditationDuringViewModel {
  MeditationModel meditation;
  bool sessionStopped;

  MeditationDuringViewModel({
    required this.meditation,
    this.sessionStopped = false,
  });
}
