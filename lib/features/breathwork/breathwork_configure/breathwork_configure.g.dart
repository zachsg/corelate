// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breathwork_configure.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BreathworkConfigureCWProxy {
  BreathworkConfigure activity(Activity activity);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BreathworkConfigure(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BreathworkConfigure(...).copyWith(id: 12, name: "My name")
  /// ````
  BreathworkConfigure call({
    Activity? activity,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBreathworkConfigure.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBreathworkConfigure.copyWith.fieldName(...)`
class _$BreathworkConfigureCWProxyImpl implements _$BreathworkConfigureCWProxy {
  const _$BreathworkConfigureCWProxyImpl(this._value);

  final BreathworkConfigure _value;

  @override
  BreathworkConfigure activity(Activity activity) => this(activity: activity);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BreathworkConfigure(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BreathworkConfigure(...).copyWith(id: 12, name: "My name")
  /// ````
  BreathworkConfigure call({
    Object? activity = const $CopyWithPlaceholder(),
  }) {
    return BreathworkConfigure(
      activity == const $CopyWithPlaceholder() || activity == null
          // ignore: unnecessary_non_null_assertion
          ? _value.activity!
          // ignore: cast_nullable_to_non_nullable
          : activity as Activity,
    );
  }
}

extension $BreathworkConfigureCopyWith on BreathworkConfigure {
  /// Returns a callable class that can be used as follows: `instanceOfBreathworkConfigure.copyWith(...)` or like so:`instanceOfBreathworkConfigure.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BreathworkConfigureCWProxy get copyWith =>
      _$BreathworkConfigureCWProxyImpl(this);
}
