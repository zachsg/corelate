// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meditation_configure.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MeditationConfigureCWProxy {
  MeditationConfigure meditation(Meditation meditation);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MeditationConfigure(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MeditationConfigure(...).copyWith(id: 12, name: "My name")
  /// ````
  MeditationConfigure call({
    Meditation? meditation,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMeditationConfigure.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMeditationConfigure.copyWith.fieldName(...)`
class _$MeditationConfigureCWProxyImpl implements _$MeditationConfigureCWProxy {
  const _$MeditationConfigureCWProxyImpl(this._value);

  final MeditationConfigure _value;

  @override
  MeditationConfigure meditation(Meditation meditation) =>
      this(meditation: meditation);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MeditationConfigure(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MeditationConfigure(...).copyWith(id: 12, name: "My name")
  /// ````
  MeditationConfigure call({
    Object? meditation = const $CopyWithPlaceholder(),
  }) {
    return MeditationConfigure(
      meditation == const $CopyWithPlaceholder() || meditation == null
          ? _value.meditation
          // ignore: cast_nullable_to_non_nullable
          : meditation as Meditation,
    );
  }
}

extension $MeditationConfigureCopyWith on MeditationConfigure {
  /// Returns a callable class that can be used as follows: `instanceOfMeditationConfigure.copyWith(...)` or like so:`instanceOfMeditationConfigure.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MeditationConfigureCWProxy get copyWith =>
      _$MeditationConfigureCWProxyImpl(this);
}
