// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meditation_during.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MeditationDuring _$MeditationDuringFromJson(Map<String, dynamic> json) {
  return _MeditationDuring.fromJson(json);
}

/// @nodoc
mixin _$MeditationDuring {
  MeditationType get type => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  int get elapsed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeditationDuringCopyWith<MeditationDuring> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeditationDuringCopyWith<$Res> {
  factory $MeditationDuringCopyWith(
          MeditationDuring value, $Res Function(MeditationDuring) then) =
      _$MeditationDuringCopyWithImpl<$Res, MeditationDuring>;
  @useResult
  $Res call({MeditationType type, int? duration, int elapsed});
}

/// @nodoc
class _$MeditationDuringCopyWithImpl<$Res, $Val extends MeditationDuring>
    implements $MeditationDuringCopyWith<$Res> {
  _$MeditationDuringCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? duration = freezed,
    Object? elapsed = null,
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
      elapsed: null == elapsed
          ? _value.elapsed
          : elapsed // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MeditationDuringCopyWith<$Res>
    implements $MeditationDuringCopyWith<$Res> {
  factory _$$_MeditationDuringCopyWith(
          _$_MeditationDuring value, $Res Function(_$_MeditationDuring) then) =
      __$$_MeditationDuringCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MeditationType type, int? duration, int elapsed});
}

/// @nodoc
class __$$_MeditationDuringCopyWithImpl<$Res>
    extends _$MeditationDuringCopyWithImpl<$Res, _$_MeditationDuring>
    implements _$$_MeditationDuringCopyWith<$Res> {
  __$$_MeditationDuringCopyWithImpl(
      _$_MeditationDuring _value, $Res Function(_$_MeditationDuring) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? duration = freezed,
    Object? elapsed = null,
  }) {
    return _then(_$_MeditationDuring(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MeditationType,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      elapsed: null == elapsed
          ? _value.elapsed
          : elapsed // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MeditationDuring implements _MeditationDuring {
  const _$_MeditationDuring(
      {this.type = MeditationType.openEnded, this.duration, this.elapsed = 0});

  factory _$_MeditationDuring.fromJson(Map<String, dynamic> json) =>
      _$$_MeditationDuringFromJson(json);

  @override
  @JsonKey()
  final MeditationType type;
  @override
  final int? duration;
  @override
  @JsonKey()
  final int elapsed;

  @override
  String toString() {
    return 'MeditationDuring(type: $type, duration: $duration, elapsed: $elapsed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MeditationDuring &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.elapsed, elapsed) || other.elapsed == elapsed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, duration, elapsed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MeditationDuringCopyWith<_$_MeditationDuring> get copyWith =>
      __$$_MeditationDuringCopyWithImpl<_$_MeditationDuring>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MeditationDuringToJson(
      this,
    );
  }
}

abstract class _MeditationDuring implements MeditationDuring {
  const factory _MeditationDuring(
      {final MeditationType type,
      final int? duration,
      final int elapsed}) = _$_MeditationDuring;

  factory _MeditationDuring.fromJson(Map<String, dynamic> json) =
      _$_MeditationDuring.fromJson;

  @override
  MeditationType get type;
  @override
  int? get duration;
  @override
  int get elapsed;
  @override
  @JsonKey(ignore: true)
  _$$_MeditationDuringCopyWith<_$_MeditationDuring> get copyWith =>
      throw _privateConstructorUsedError;
}
