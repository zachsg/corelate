// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meditation_setup_view_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MeditationSetupViewModelCWProxy {
  MeditationSetupViewModel meditation(MeditationModel meditation);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MeditationSetupViewModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MeditationSetupViewModel(...).copyWith(id: 12, name: "My name")
  /// ````
  MeditationSetupViewModel call({
    MeditationModel? meditation,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMeditationSetupViewModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMeditationSetupViewModel.copyWith.fieldName(...)`
class _$MeditationSetupViewModelCWProxyImpl
    implements _$MeditationSetupViewModelCWProxy {
  const _$MeditationSetupViewModelCWProxyImpl(this._value);

  final MeditationSetupViewModel _value;

  @override
  MeditationSetupViewModel meditation(MeditationModel meditation) =>
      this(meditation: meditation);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MeditationSetupViewModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MeditationSetupViewModel(...).copyWith(id: 12, name: "My name")
  /// ````
  MeditationSetupViewModel call({
    Object? meditation = const $CopyWithPlaceholder(),
  }) {
    return MeditationSetupViewModel(
      meditation == const $CopyWithPlaceholder() || meditation == null
          ? _value.meditation
          // ignore: cast_nullable_to_non_nullable
          : meditation as MeditationModel,
    );
  }
}

extension $MeditationSetupViewModelCopyWith on MeditationSetupViewModel {
  /// Returns a callable class that can be used as follows: `instanceOfMeditationSetupViewModel.copyWith(...)` or like so:`instanceOfMeditationSetupViewModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MeditationSetupViewModelCWProxy get copyWith =>
      _$MeditationSetupViewModelCWProxyImpl(this);
}
