// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breathwork_setup_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BreathworkSetupModelCWProxy {
  BreathworkSetupModel breathwork(Breathwork breathwork);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BreathworkSetupModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BreathworkSetupModel(...).copyWith(id: 12, name: "My name")
  /// ````
  BreathworkSetupModel call({
    Breathwork? breathwork,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBreathworkSetupModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBreathworkSetupModel.copyWith.fieldName(...)`
class _$BreathworkSetupModelCWProxyImpl
    implements _$BreathworkSetupModelCWProxy {
  const _$BreathworkSetupModelCWProxyImpl(this._value);

  final BreathworkSetupModel _value;

  @override
  BreathworkSetupModel breathwork(Breathwork breathwork) =>
      this(breathwork: breathwork);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BreathworkSetupModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BreathworkSetupModel(...).copyWith(id: 12, name: "My name")
  /// ````
  BreathworkSetupModel call({
    Object? breathwork = const $CopyWithPlaceholder(),
  }) {
    return BreathworkSetupModel(
      breathwork == const $CopyWithPlaceholder() || breathwork == null
          ? _value.breathwork
          // ignore: cast_nullable_to_non_nullable
          : breathwork as Breathwork,
    );
  }
}

extension $BreathworkSetupModelCopyWith on BreathworkSetupModel {
  /// Returns a callable class that can be used as follows: `instanceOfBreathworkSetupModel.copyWith(...)` or like so:`instanceOfBreathworkSetupModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BreathworkSetupModelCWProxy get copyWith =>
      _$BreathworkSetupModelCWProxyImpl(this);
}
