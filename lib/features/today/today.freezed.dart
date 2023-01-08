// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'today.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Today _$TodayFromJson(Map<String, dynamic> json) {
  return _Today.fromJson(json);
}

/// @nodoc
mixin _$Today {
  bool get fabExpanded => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodayCopyWith<Today> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodayCopyWith<$Res> {
  factory $TodayCopyWith(Today value, $Res Function(Today) then) =
      _$TodayCopyWithImpl<$Res, Today>;
  @useResult
  $Res call({bool fabExpanded});
}

/// @nodoc
class _$TodayCopyWithImpl<$Res, $Val extends Today>
    implements $TodayCopyWith<$Res> {
  _$TodayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fabExpanded = null,
  }) {
    return _then(_value.copyWith(
      fabExpanded: null == fabExpanded
          ? _value.fabExpanded
          : fabExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TodayCopyWith<$Res> implements $TodayCopyWith<$Res> {
  factory _$$_TodayCopyWith(_$_Today value, $Res Function(_$_Today) then) =
      __$$_TodayCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool fabExpanded});
}

/// @nodoc
class __$$_TodayCopyWithImpl<$Res> extends _$TodayCopyWithImpl<$Res, _$_Today>
    implements _$$_TodayCopyWith<$Res> {
  __$$_TodayCopyWithImpl(_$_Today _value, $Res Function(_$_Today) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fabExpanded = null,
  }) {
    return _then(_$_Today(
      fabExpanded: null == fabExpanded
          ? _value.fabExpanded
          : fabExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Today implements _Today {
  const _$_Today({this.fabExpanded = false});

  factory _$_Today.fromJson(Map<String, dynamic> json) =>
      _$$_TodayFromJson(json);

  @override
  @JsonKey()
  final bool fabExpanded;

  @override
  String toString() {
    return 'Today(fabExpanded: $fabExpanded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Today &&
            (identical(other.fabExpanded, fabExpanded) ||
                other.fabExpanded == fabExpanded));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fabExpanded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodayCopyWith<_$_Today> get copyWith =>
      __$$_TodayCopyWithImpl<_$_Today>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TodayToJson(
      this,
    );
  }
}

abstract class _Today implements Today {
  const factory _Today({final bool fabExpanded}) = _$_Today;

  factory _Today.fromJson(Map<String, dynamic> json) = _$_Today.fromJson;

  @override
  bool get fabExpanded;
  @override
  @JsonKey(ignore: true)
  _$$_TodayCopyWith<_$_Today> get copyWith =>
      throw _privateConstructorUsedError;
}
