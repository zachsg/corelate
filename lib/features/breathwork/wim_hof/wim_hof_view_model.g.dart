// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wim_hof_view_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$WimHofViewModelCWProxy {
  WimHofViewModel currentRound(int currentRound);

  WimHofViewModel currentBreath(int currentBreath);

  WimHofViewModel isInhaling(bool isInhaling);

  WimHofViewModel isHoldingExhale(bool isHoldingExhale);

  WimHofViewModel isHoldingInhale(bool isHoldingInhale);

  WimHofViewModel isDone(bool isDone);

  WimHofViewModel holdSecondsCurrentRound(int holdSecondsCurrentRound);

  WimHofViewModel holdSeconds(List<int> holdSeconds);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `WimHofViewModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// WimHofViewModel(...).copyWith(id: 12, name: "My name")
  /// ````
  WimHofViewModel call({
    int? currentRound,
    int? currentBreath,
    bool? isInhaling,
    bool? isHoldingExhale,
    bool? isHoldingInhale,
    bool? isDone,
    int? holdSecondsCurrentRound,
    List<int>? holdSeconds,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfWimHofViewModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfWimHofViewModel.copyWith.fieldName(...)`
class _$WimHofViewModelCWProxyImpl implements _$WimHofViewModelCWProxy {
  const _$WimHofViewModelCWProxyImpl(this._value);

  final WimHofViewModel _value;

  @override
  WimHofViewModel currentRound(int currentRound) =>
      this(currentRound: currentRound);

  @override
  WimHofViewModel currentBreath(int currentBreath) =>
      this(currentBreath: currentBreath);

  @override
  WimHofViewModel isInhaling(bool isInhaling) => this(isInhaling: isInhaling);

  @override
  WimHofViewModel isHoldingExhale(bool isHoldingExhale) =>
      this(isHoldingExhale: isHoldingExhale);

  @override
  WimHofViewModel isHoldingInhale(bool isHoldingInhale) =>
      this(isHoldingInhale: isHoldingInhale);

  @override
  WimHofViewModel isDone(bool isDone) => this(isDone: isDone);

  @override
  WimHofViewModel holdSecondsCurrentRound(int holdSecondsCurrentRound) =>
      this(holdSecondsCurrentRound: holdSecondsCurrentRound);

  @override
  WimHofViewModel holdSeconds(List<int> holdSeconds) =>
      this(holdSeconds: holdSeconds);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `WimHofViewModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// WimHofViewModel(...).copyWith(id: 12, name: "My name")
  /// ````
  WimHofViewModel call({
    Object? currentRound = const $CopyWithPlaceholder(),
    Object? currentBreath = const $CopyWithPlaceholder(),
    Object? isInhaling = const $CopyWithPlaceholder(),
    Object? isHoldingExhale = const $CopyWithPlaceholder(),
    Object? isHoldingInhale = const $CopyWithPlaceholder(),
    Object? isDone = const $CopyWithPlaceholder(),
    Object? holdSecondsCurrentRound = const $CopyWithPlaceholder(),
    Object? holdSeconds = const $CopyWithPlaceholder(),
  }) {
    return WimHofViewModel(
      currentRound:
          currentRound == const $CopyWithPlaceholder() || currentRound == null
              ? _value.currentRound
              // ignore: cast_nullable_to_non_nullable
              : currentRound as int,
      currentBreath:
          currentBreath == const $CopyWithPlaceholder() || currentBreath == null
              ? _value.currentBreath
              // ignore: cast_nullable_to_non_nullable
              : currentBreath as int,
      isInhaling:
          isInhaling == const $CopyWithPlaceholder() || isInhaling == null
              ? _value.isInhaling
              // ignore: cast_nullable_to_non_nullable
              : isInhaling as bool,
      isHoldingExhale: isHoldingExhale == const $CopyWithPlaceholder() ||
              isHoldingExhale == null
          ? _value.isHoldingExhale
          // ignore: cast_nullable_to_non_nullable
          : isHoldingExhale as bool,
      isHoldingInhale: isHoldingInhale == const $CopyWithPlaceholder() ||
              isHoldingInhale == null
          ? _value.isHoldingInhale
          // ignore: cast_nullable_to_non_nullable
          : isHoldingInhale as bool,
      isDone: isDone == const $CopyWithPlaceholder() || isDone == null
          ? _value.isDone
          // ignore: cast_nullable_to_non_nullable
          : isDone as bool,
      holdSecondsCurrentRound:
          holdSecondsCurrentRound == const $CopyWithPlaceholder() ||
                  holdSecondsCurrentRound == null
              ? _value.holdSecondsCurrentRound
              // ignore: cast_nullable_to_non_nullable
              : holdSecondsCurrentRound as int,
      holdSeconds:
          holdSeconds == const $CopyWithPlaceholder() || holdSeconds == null
              ? _value.holdSeconds
              // ignore: cast_nullable_to_non_nullable
              : holdSeconds as List<int>,
    );
  }
}

extension $WimHofViewModelCopyWith on WimHofViewModel {
  /// Returns a callable class that can be used as follows: `instanceOfWimHofViewModel.copyWith(...)` or like so:`instanceOfWimHofViewModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$WimHofViewModelCWProxy get copyWith => _$WimHofViewModelCWProxyImpl(this);
}
