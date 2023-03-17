// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'four_7_8_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$Four78ModelCWProxy {
  Four78Model breathing(Breathing breathing);

  Four78Model currentRound(int currentRound);

  Four78Model isDone(bool isDone);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Four78Model(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Four78Model(...).copyWith(id: 12, name: "My name")
  /// ````
  Four78Model call({
    Breathing? breathing,
    int? currentRound,
    bool? isDone,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfFour78Model.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfFour78Model.copyWith.fieldName(...)`
class _$Four78ModelCWProxyImpl implements _$Four78ModelCWProxy {
  const _$Four78ModelCWProxyImpl(this._value);

  final Four78Model _value;

  @override
  Four78Model breathing(Breathing breathing) => this(breathing: breathing);

  @override
  Four78Model currentRound(int currentRound) =>
      this(currentRound: currentRound);

  @override
  Four78Model isDone(bool isDone) => this(isDone: isDone);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Four78Model(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Four78Model(...).copyWith(id: 12, name: "My name")
  /// ````
  Four78Model call({
    Object? breathing = const $CopyWithPlaceholder(),
    Object? currentRound = const $CopyWithPlaceholder(),
    Object? isDone = const $CopyWithPlaceholder(),
  }) {
    return Four78Model(
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

extension $Four78ModelCopyWith on Four78Model {
  /// Returns a callable class that can be used as follows: `instanceOfFour78Model.copyWith(...)` or like so:`instanceOfFour78Model.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$Four78ModelCWProxy get copyWith => _$Four78ModelCWProxyImpl(this);
}
