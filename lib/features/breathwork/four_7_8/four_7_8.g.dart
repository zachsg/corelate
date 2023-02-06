// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'four_7_8.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$Four78CWProxy {
  Four78 breathing(Breathing breathing);

  Four78 currentRound(int currentRound);

  Four78 isDone(bool isDone);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Four78(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Four78(...).copyWith(id: 12, name: "My name")
  /// ````
  Four78 call({
    Breathing? breathing,
    int? currentRound,
    bool? isDone,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfFour78.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfFour78.copyWith.fieldName(...)`
class _$Four78CWProxyImpl implements _$Four78CWProxy {
  const _$Four78CWProxyImpl(this._value);

  final Four78 _value;

  @override
  Four78 breathing(Breathing breathing) => this(breathing: breathing);

  @override
  Four78 currentRound(int currentRound) => this(currentRound: currentRound);

  @override
  Four78 isDone(bool isDone) => this(isDone: isDone);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Four78(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Four78(...).copyWith(id: 12, name: "My name")
  /// ````
  Four78 call({
    Object? breathing = const $CopyWithPlaceholder(),
    Object? currentRound = const $CopyWithPlaceholder(),
    Object? isDone = const $CopyWithPlaceholder(),
  }) {
    return Four78(
      breathing: breathing == const $CopyWithPlaceholder() || breathing == null
          // ignore: unnecessary_non_null_assertion
          ? _value.breathing!
          // ignore: cast_nullable_to_non_nullable
          : breathing as Breathing,
      currentRound:
          currentRound == const $CopyWithPlaceholder() || currentRound == null
              // ignore: unnecessary_non_null_assertion
              ? _value.currentRound!
              // ignore: cast_nullable_to_non_nullable
              : currentRound as int,
      isDone: isDone == const $CopyWithPlaceholder() || isDone == null
          // ignore: unnecessary_non_null_assertion
          ? _value.isDone!
          // ignore: cast_nullable_to_non_nullable
          : isDone as bool,
    );
  }
}

extension $Four78CopyWith on Four78 {
  /// Returns a callable class that can be used as follows: `instanceOfFour78.copyWith(...)` or like so:`instanceOfFour78.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$Four78CWProxy get copyWith => _$Four78CWProxyImpl(this);
}
