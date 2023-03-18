// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breathwork_setup_view_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BreathworkSetupViewModelCWProxy {
  BreathworkSetupViewModel breathwork(BreathworkModel breathwork);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BreathworkSetupViewModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BreathworkSetupViewModel(...).copyWith(id: 12, name: "My name")
  /// ````
  BreathworkSetupViewModel call({
    BreathworkModel? breathwork,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBreathworkSetupViewModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBreathworkSetupViewModel.copyWith.fieldName(...)`
class _$BreathworkSetupViewModelCWProxyImpl
    implements _$BreathworkSetupViewModelCWProxy {
  const _$BreathworkSetupViewModelCWProxyImpl(this._value);

  final BreathworkSetupViewModel _value;

  @override
  BreathworkSetupViewModel breathwork(BreathworkModel breathwork) =>
      this(breathwork: breathwork);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BreathworkSetupViewModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BreathworkSetupViewModel(...).copyWith(id: 12, name: "My name")
  /// ````
  BreathworkSetupViewModel call({
    Object? breathwork = const $CopyWithPlaceholder(),
  }) {
    return BreathworkSetupViewModel(
      breathwork == const $CopyWithPlaceholder() || breathwork == null
          ? _value.breathwork
          // ignore: cast_nullable_to_non_nullable
          : breathwork as BreathworkModel,
    );
  }
}

extension $BreathworkSetupViewModelCopyWith on BreathworkSetupViewModel {
  /// Returns a callable class that can be used as follows: `instanceOfBreathworkSetupViewModel.copyWith(...)` or like so:`instanceOfBreathworkSetupViewModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BreathworkSetupViewModelCWProxy get copyWith =>
      _$BreathworkSetupViewModelCWProxyImpl(this);
}
