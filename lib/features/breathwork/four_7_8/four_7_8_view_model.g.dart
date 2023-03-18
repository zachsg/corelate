// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'four_7_8_view_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$Four78ViewModelCWProxy {
  Four78ViewModel breathing(Breathing breathing);

  Four78ViewModel currentRound(int currentRound);

  Four78ViewModel isDone(bool isDone);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Four78ViewModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Four78ViewModel(...).copyWith(id: 12, name: "My name")
  /// ````
  Four78ViewModel call({
    Breathing? breathing,
    int? currentRound,
    bool? isDone,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfFour78ViewModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfFour78ViewModel.copyWith.fieldName(...)`
class _$Four78ViewModelCWProxyImpl implements _$Four78ViewModelCWProxy {
  const _$Four78ViewModelCWProxyImpl(this._value);

  final Four78ViewModel _value;

  @override
  Four78ViewModel breathing(Breathing breathing) => this(breathing: breathing);

  @override
  Four78ViewModel currentRound(int currentRound) =>
      this(currentRound: currentRound);

  @override
  Four78ViewModel isDone(bool isDone) => this(isDone: isDone);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Four78ViewModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Four78ViewModel(...).copyWith(id: 12, name: "My name")
  /// ````
  Four78ViewModel call({
    Object? breathing = const $CopyWithPlaceholder(),
    Object? currentRound = const $CopyWithPlaceholder(),
    Object? isDone = const $CopyWithPlaceholder(),
  }) {
    return Four78ViewModel(
      breathing: breathing == const $CopyWithPlaceholder() || breathing == null
          ? _value.breathing
          // ignore: cast_nullable_to_non_nullable
          : breathing as Breathing,
      currentRound:
          currentRound == const $CopyWithPlaceholder() || currentRound == null
              ? _value.currentRound
              // ignore: cast_nullable_to_non_nullable
              : currentRound as int,
      isDone: isDone == const $CopyWithPlaceholder() || isDone == null
          ? _value.isDone
          // ignore: cast_nullable_to_non_nullable
          : isDone as bool,
    );
  }
}

extension $Four78ViewModelCopyWith on Four78ViewModel {
  /// Returns a callable class that can be used as follows: `instanceOfFour78ViewModel.copyWith(...)` or like so:`instanceOfFour78ViewModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$Four78ViewModelCWProxy get copyWith => _$Four78ViewModelCWProxyImpl(this);
}
