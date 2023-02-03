// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breathwork_configure.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BreathworkConfigureCWProxy {
  BreathworkConfigure breathwork(Breathwork breathwork);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BreathworkConfigure(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BreathworkConfigure(...).copyWith(id: 12, name: "My name")
  /// ````
  BreathworkConfigure call({
    Breathwork? breathwork,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBreathworkConfigure.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBreathworkConfigure.copyWith.fieldName(...)`
class _$BreathworkConfigureCWProxyImpl implements _$BreathworkConfigureCWProxy {
  const _$BreathworkConfigureCWProxyImpl(this._value);

  final BreathworkConfigure _value;

  @override
  BreathworkConfigure breathwork(Breathwork breathwork) =>
      this(breathwork: breathwork);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BreathworkConfigure(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BreathworkConfigure(...).copyWith(id: 12, name: "My name")
  /// ````
  BreathworkConfigure call({
    Object? breathwork = const $CopyWithPlaceholder(),
  }) {
    return BreathworkConfigure(
      breathwork == const $CopyWithPlaceholder() || breathwork == null
          // ignore: unnecessary_non_null_assertion
          ? _value.breathwork!
          // ignore: cast_nullable_to_non_nullable
          : breathwork as Breathwork,
    );
  }
}

extension $BreathworkConfigureCopyWith on BreathworkConfigure {
  /// Returns a callable class that can be used as follows: `instanceOfBreathworkConfigure.copyWith(...)` or like so:`instanceOfBreathworkConfigure.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BreathworkConfigureCWProxy get copyWith =>
      _$BreathworkConfigureCWProxyImpl(this);
}
