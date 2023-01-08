import 'package:freezed_annotation/freezed_annotation.dart';

import '../meditation_type.dart';

part 'meditation_during.freezed.dart';
part 'meditation_during.g.dart';

@freezed
class MeditationDuring with _$MeditationDuring {
  const factory MeditationDuring({
    @Default(MeditationType.openEnded) MeditationType type,
    int? duration,
    @Default(0) int elapsed,
  }) = _MeditationDuring;

  factory MeditationDuring.fromJson(Map<String, dynamic> json) =>
      _$MeditationDuringFromJson(json);
}
