// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meditation_configure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MeditationConfigure _$MeditationConfigureFromJson(Map<String, dynamic> json) {
  return _MeditationConfigure.fromJson(json);
}

/// @nodoc
mixin _$MeditationConfigure {
  MeditationType get type => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeditationConfigureCopyWith<MeditationConfigure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeditationConfigureCopyWith<$Res> {
  factory $MeditationConfigureCopyWith(
          MeditationConfigure value, $Res Function(MeditationConfigure) then) =
      _$MeditationConfigureCopyWithImpl<$Res, MeditationConfigure>;
  @useResult
  $Res call({MeditationType type, int? duration});
}

/// @nodoc
class _$MeditationConfigureCopyWithImpl<$Res, $Val extends MeditationConfigure>
    implements $MeditationConfigureCopyWith<$Res> {
  _$MeditationConfigureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? duration = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MeditationType,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MeditationConfigureCopyWith<$Res>
    implements $MeditationConfigureCopyWith<$Res> {
  factory _$$_MeditationConfigureCopyWith(_$_MeditationConfigure value,
          $Res Function(_$_MeditationConfigure) then) =
      __$$_MeditationConfigureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MeditationType type, int? duration});
}

/// @nodoc
class __$$_MeditationConfigureCopyWithImpl<$Res>
    extends _$MeditationConfigureCopyWithImpl<$Res, _$_MeditationConfigure>
    implements _$$_MeditationConfigureCopyWith<$Res> {
  __$$_MeditationConfigureCopyWithImpl(_$_MeditationConfigure _value,
      $Res Function(_$_MeditationConfigure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? duration = freezed,
  }) {
    return _then(_$_MeditationConfigure(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MeditationType,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MeditationConfigure implements _MeditationConfigure {
  const _$_MeditationConfigure(
      {this.type = MeditationType.openEnded, this.duration});

  factory _$_MeditationConfigure.fromJson(Map<String, dynamic> json) =>
      _$$_MeditationConfigureFromJson(json);

  @override
  @JsonKey()
  final MeditationType type;
  @override
  final int? duration;

  @override
  String toString() {
    return 'MeditationConfigure(type: $type, duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MeditationConfigure &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MeditationConfigureCopyWith<_$_MeditationConfigure> get copyWith =>
      __$$_MeditationConfigureCopyWithImpl<_$_MeditationConfigure>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MeditationConfigureToJson(
      this,
    );
  }
}

abstract class _MeditationConfigure implements MeditationConfigure {
  const factory _MeditationConfigure(
      {final MeditationType type,
      final int? duration}) = _$_MeditationConfigure;

  factory _MeditationConfigure.fromJson(Map<String, dynamic> json) =
      _$_MeditationConfigure.fromJson;

  @override
  MeditationType get type;
  @override
  int? get duration;
  @override
  @JsonKey(ignore: true)
  _$$_MeditationConfigureCopyWith<_$_MeditationConfigure> get copyWith =>
      throw _privateConstructorUsedError;
}
