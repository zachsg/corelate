// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meditation_during.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MeditationDuring _$$_MeditationDuringFromJson(Map<String, dynamic> json) =>
    _$_MeditationDuring(
      type: $enumDecodeNullable(_$MeditationTypeEnumMap, json['type']) ??
          MeditationType.openEnded,
      duration: json['duration'] as int?,
      elapsed: json['elapsed'] as int? ?? 0,
    );

Map<String, dynamic> _$$_MeditationDuringToJson(_$_MeditationDuring instance) =>
    <String, dynamic>{
      'type': _$MeditationTypeEnumMap[instance.type]!,
      'duration': instance.duration,
      'elapsed': instance.elapsed,
    };

const _$MeditationTypeEnumMap = {
  MeditationType.openEnded: 'openEnded',
  MeditationType.timed: 'timed',
};
