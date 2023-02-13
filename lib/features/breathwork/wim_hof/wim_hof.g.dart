// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wim_hof.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$WimHofCWProxy {
  WimHof currentRound(int currentRound);

  WimHof currentBreath(int currentBreath);

  WimHof isInhaling(bool isInhaling);

  WimHof isHoldingExhale(bool isHoldingExhale);

  WimHof isHoldingInhale(bool isHoldingInhale);

  WimHof isDone(bool isDone);

  WimHof holdSecondsCurrentRound(int holdSecondsCurrentRound);

  WimHof holdSeconds(List<int> holdSeconds);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `WimHof(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// WimHof(...).copyWith(id: 12, name: "My name")
  /// ````
  WimHof call({
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

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfWimHof.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfWimHof.copyWith.fieldName(...)`
class _$WimHofCWProxyImpl implements _$WimHofCWProxy {
  const _$WimHofCWProxyImpl(this._value);

  final WimHof _value;

  @override
  WimHof currentRound(int currentRound) => this(currentRound: currentRound);

  @override
  WimHof currentBreath(int currentBreath) => this(currentBreath: currentBreath);

  @override
  WimHof isInhaling(bool isInhaling) => this(isInhaling: isInhaling);

  @override
  WimHof isHoldingExhale(bool isHoldingExhale) =>
      this(isHoldingExhale: isHoldingExhale);

  @override
  WimHof isHoldingInhale(bool isHoldingInhale) =>
      this(isHoldingInhale: isHoldingInhale);

  @override
  WimHof isDone(bool isDone) => this(isDone: isDone);

  @override
  WimHof holdSecondsCurrentRound(int holdSecondsCurrentRound) =>
      this(holdSecondsCurrentRound: holdSecondsCurrentRound);

  @override
  WimHof holdSeconds(List<int> holdSeconds) => this(holdSeconds: holdSeconds);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `WimHof(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// WimHof(...).copyWith(id: 12, name: "My name")
  /// ````
  WimHof call({
    Object? currentRound = const $CopyWithPlaceholder(),
    Object? currentBreath = const $CopyWithPlaceholder(),
    Object? isInhaling = const $CopyWithPlaceholder(),
    Object? isHoldingExhale = const $CopyWithPlaceholder(),
    Object? isHoldingInhale = const $CopyWithPlaceholder(),
    Object? isDone = const $CopyWithPlaceholder(),
    Object? holdSecondsCurrentRound = const $CopyWithPlaceholder(),
    Object? holdSeconds = const $CopyWithPlaceholder(),
  }) {
    return WimHof(
      currentRound:
          currentRound == const $CopyWithPlaceholder() || currentRound == null
              // ignore: unnecessary_non_null_assertion
              ? _value.currentRound!
              // ignore: cast_nullable_to_non_nullable
              : currentRound as int,
      currentBreath:
          currentBreath == const $CopyWithPlaceholder() || currentBreath == null
              // ignore: unnecessary_non_null_assertion
              ? _value.currentBreath!
              // ignore: cast_nullable_to_non_nullable
              : currentBreath as int,
      isInhaling:
          isInhaling == const $CopyWithPlaceholder() || isInhaling == null
              // ignore: unnecessary_non_null_assertion
              ? _value.isInhaling!
              // ignore: cast_nullable_to_non_nullable
              : isInhaling as bool,
      isHoldingExhale: isHoldingExhale == const $CopyWithPlaceholder() ||
              isHoldingExhale == null
          // ignore: unnecessary_non_null_assertion
          ? _value.isHoldingExhale!
          // ignore: cast_nullable_to_non_nullable
          : isHoldingExhale as bool,
      isHoldingInhale: isHoldingInhale == const $CopyWithPlaceholder() ||
              isHoldingInhale == null
          // ignore: unnecessary_non_null_assertion
          ? _value.isHoldingInhale!
          // ignore: cast_nullable_to_non_nullable
          : isHoldingInhale as bool,
      isDone: isDone == const $CopyWithPlaceholder() || isDone == null
          // ignore: unnecessary_non_null_assertion
          ? _value.isDone!
          // ignore: cast_nullable_to_non_nullable
          : isDone as bool,
      holdSecondsCurrentRound:
          holdSecondsCurrentRound == const $CopyWithPlaceholder() ||
                  holdSecondsCurrentRound == null
              // ignore: unnecessary_non_null_assertion
              ? _value.holdSecondsCurrentRound!
              // ignore: cast_nullable_to_non_nullable
              : holdSecondsCurrentRound as int,
      holdSeconds:
          holdSeconds == const $CopyWithPlaceholder() || holdSeconds == null
              // ignore: unnecessary_non_null_assertion
              ? _value.holdSeconds!
              // ignore: cast_nullable_to_non_nullable
              : holdSeconds as List<int>,
    );
  }
}

extension $WimHofCopyWith on WimHof {
  /// Returns a callable class that can be used as follows: `instanceOfWimHof.copyWith(...)` or like so:`instanceOfWimHof.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$WimHofCWProxy get copyWith => _$WimHofCWProxyImpl(this);
}
