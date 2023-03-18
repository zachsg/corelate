// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meditation_during_view_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MeditationDuringViewModelCWProxy {
  MeditationDuringViewModel meditation(MeditationModel meditation);

  MeditationDuringViewModel sessionStopped(bool sessionStopped);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MeditationDuringViewModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MeditationDuringViewModel(...).copyWith(id: 12, name: "My name")
  /// ````
  MeditationDuringViewModel call({
    MeditationModel? meditation,
    bool? sessionStopped,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMeditationDuringViewModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMeditationDuringViewModel.copyWith.fieldName(...)`
class _$MeditationDuringViewModelCWProxyImpl
    implements _$MeditationDuringViewModelCWProxy {
  const _$MeditationDuringViewModelCWProxyImpl(this._value);

  final MeditationDuringViewModel _value;

  @override
  MeditationDuringViewModel meditation(MeditationModel meditation) =>
      this(meditation: meditation);

  @override
  MeditationDuringViewModel sessionStopped(bool sessionStopped) =>
      this(sessionStopped: sessionStopped);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MeditationDuringViewModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MeditationDuringViewModel(...).copyWith(id: 12, name: "My name")
  /// ````
  MeditationDuringViewModel call({
    Object? meditation = const $CopyWithPlaceholder(),
    Object? sessionStopped = const $CopyWithPlaceholder(),
  }) {
    return MeditationDuringViewModel(
      meditation:
          meditation == const $CopyWithPlaceholder() || meditation == null
              ? _value.meditation
              // ignore: cast_nullable_to_non_nullable
              : meditation as MeditationModel,
      sessionStopped: sessionStopped == const $CopyWithPlaceholder() ||
              sessionStopped == null
          ? _value.sessionStopped
          // ignore: cast_nullable_to_non_nullable
          : sessionStopped as bool,
    );
  }
}

extension $MeditationDuringViewModelCopyWith on MeditationDuringViewModel {
  /// Returns a callable class that can be used as follows: `instanceOfMeditationDuringViewModel.copyWith(...)` or like so:`instanceOfMeditationDuringViewModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MeditationDuringViewModelCWProxy get copyWith =>
      _$MeditationDuringViewModelCWProxyImpl(this);
}
