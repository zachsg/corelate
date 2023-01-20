// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wim_hof.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$WimHofCWProxy {
  WimHof currentRound(int currentRound);

  WimHof currentBreath(int currentBreath);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `WimHof(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// WimHof(...).copyWith(id: 12, name: "My name")
  /// ````
  WimHof call({
    int? currentRound,
    int? currentBreath,
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

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `WimHof(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// WimHof(...).copyWith(id: 12, name: "My name")
  /// ````
  WimHof call({
    Object? currentRound = const $CopyWithPlaceholder(),
    Object? currentBreath = const $CopyWithPlaceholder(),
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
    );
  }
}

extension $WimHofCopyWith on WimHof {
  /// Returns a callable class that can be used as follows: `instanceOfWimHof.copyWith(...)` or like so:`instanceOfWimHof.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$WimHofCWProxy get copyWith => _$WimHofCWProxyImpl(this);
}
