// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meditation_setup_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MeditationSetupModelCWProxy {
  MeditationSetupModel meditation(Meditation meditation);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MeditationSetupModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MeditationSetupModel(...).copyWith(id: 12, name: "My name")
  /// ````
  MeditationSetupModel call({
    Meditation? meditation,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMeditationSetupModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMeditationSetupModel.copyWith.fieldName(...)`
class _$MeditationSetupModelCWProxyImpl
    implements _$MeditationSetupModelCWProxy {
  const _$MeditationSetupModelCWProxyImpl(this._value);

  final MeditationSetupModel _value;

  @override
  MeditationSetupModel meditation(Meditation meditation) =>
      this(meditation: meditation);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MeditationSetupModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MeditationSetupModel(...).copyWith(id: 12, name: "My name")
  /// ````
  MeditationSetupModel call({
    Object? meditation = const $CopyWithPlaceholder(),
  }) {
    return MeditationSetupModel(
      meditation == const $CopyWithPlaceholder() || meditation == null
          ? _value.meditation
          // ignore: cast_nullable_to_non_nullable
          : meditation as Meditation,
    );
  }
}

extension $MeditationSetupModelCopyWith on MeditationSetupModel {
  /// Returns a callable class that can be used as follows: `instanceOfMeditationSetupModel.copyWith(...)` or like so:`instanceOfMeditationSetupModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MeditationSetupModelCWProxy get copyWith =>
      _$MeditationSetupModelCWProxyImpl(this);
}
