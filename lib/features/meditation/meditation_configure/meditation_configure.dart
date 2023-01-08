import 'package:freezed_annotation/freezed_annotation.dart';

import '../meditation_type.dart';

part 'meditation_configure.freezed.dart';
part 'meditation_configure.g.dart';

@freezed
class MeditationConfigure with _$MeditationConfigure {
  const factory MeditationConfigure({
    @Default(MeditationType.openEnded) MeditationType type,
    int? duration,
  }) = _MeditationConfigure;

  factory MeditationConfigure.fromJson(Map<String, dynamic> json) =>
      _$MeditationConfigureFromJson(json);
}
