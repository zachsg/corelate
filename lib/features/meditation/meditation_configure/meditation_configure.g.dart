// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meditation_configure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MeditationConfigure _$$_MeditationConfigureFromJson(
        Map<String, dynamic> json) =>
    _$_MeditationConfigure(
      type: $enumDecodeNullable(_$MeditationTypeEnumMap, json['type']) ??
          MeditationType.openEnded,
      duration: json['duration'] as int?,
    );

Map<String, dynamic> _$$_MeditationConfigureToJson(
        _$_MeditationConfigure instance) =>
    <String, dynamic>{
      'type': _$MeditationTypeEnumMap[instance.type]!,
      'duration': instance.duration,
    };

const _$MeditationTypeEnumMap = {
  MeditationType.openEnded: 'openEnded',
  MeditationType.timed: 'timed',
};
