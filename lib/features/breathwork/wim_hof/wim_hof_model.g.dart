// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wim_hof_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$WimHofModelCWProxy {
  WimHofModel currentRound(int currentRound);

  WimHofModel currentBreath(int currentBreath);

  WimHofModel isInhaling(bool isInhaling);

  WimHofModel isHoldingExhale(bool isHoldingExhale);

  WimHofModel isHoldingInhale(bool isHoldingInhale);

  WimHofModel isDone(bool isDone);

  WimHofModel holdSecondsCurrentRound(int holdSecondsCurrentRound);

  WimHofModel holdSeconds(List<int> holdSeconds);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `WimHofModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// WimHofModel(...).copyWith(id: 12, name: "My name")
  /// ````
  WimHofModel call({
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

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfWimHofModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfWimHofModel.copyWith.fieldName(...)`
class _$WimHofModelCWProxyImpl implements _$WimHofModelCWProxy {
  const _$WimHofModelCWProxyImpl(this._value);

  final WimHofModel _value;

  @override
  WimHofModel currentRound(int currentRound) =>
      this(currentRound: currentRound);

  @override
  WimHofModel currentBreath(int currentBreath) =>
      this(currentBreath: currentBreath);

  @override
  WimHofModel isInhaling(bool isInhaling) => this(isInhaling: isInhaling);

  @override
  WimHofModel isHoldingExhale(bool isHoldingExhale) =>
      this(isHoldingExhale: isHoldingExhale);

  @override
  WimHofModel isHoldingInhale(bool isHoldingInhale) =>
      this(isHoldingInhale: isHoldingInhale);

  @override
  WimHofModel isDone(bool isDone) => this(isDone: isDone);

  @override
  WimHofModel holdSecondsCurrentRound(int holdSecondsCurrentRound) =>
      this(holdSecondsCurrentRound: holdSecondsCurrentRound);

  @override
  WimHofModel holdSeconds(List<int> holdSeconds) =>
      this(holdSeconds: holdSeconds);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `WimHofModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// WimHofModel(...).copyWith(id: 12, name: "My name")
  /// ````
  WimHofModel call({
    Object? currentRound = const $CopyWithPlaceholder(),
    Object? currentBreath = const $CopyWithPlaceholder(),
    Object? isInhaling = const $CopyWithPlaceholder(),
    Object? isHoldingExhale = const $CopyWithPlaceholder(),
    Object? isHoldingInhale = const $CopyWithPlaceholder(),
    Object? isDone = const $CopyWithPlaceholder(),
    Object? holdSecondsCurrentRound = const $CopyWithPlaceholder(),
    Object? holdSeconds = const $CopyWithPlaceholder(),
  }) {
    return WimHofModel(
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

extension $WimHofModelCopyWith on WimHofModel {
  /// Returns a callable class that can be used as follows: `instanceOfWimHofModel.copyWith(...)` or like so:`instanceOfWimHofModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$WimHofModelCWProxy get copyWith => _$WimHofModelCWProxyImpl(this);
}
