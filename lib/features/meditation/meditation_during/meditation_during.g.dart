// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meditation_during.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MeditationDuringCWProxy {
  MeditationDuring activity(Activity activity);

  MeditationDuring sessionStopped(bool sessionStopped);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MeditationDuring(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MeditationDuring(...).copyWith(id: 12, name: "My name")
  /// ````
  MeditationDuring call({
    Activity? activity,
    bool? sessionStopped,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMeditationDuring.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMeditationDuring.copyWith.fieldName(...)`
class _$MeditationDuringCWProxyImpl implements _$MeditationDuringCWProxy {
  const _$MeditationDuringCWProxyImpl(this._value);

  final MeditationDuring _value;

  @override
  MeditationDuring activity(Activity activity) => this(activity: activity);

  @override
  MeditationDuring sessionStopped(bool sessionStopped) =>
      this(sessionStopped: sessionStopped);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MeditationDuring(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MeditationDuring(...).copyWith(id: 12, name: "My name")
  /// ````
  MeditationDuring call({
    Object? activity = const $CopyWithPlaceholder(),
    Object? sessionStopped = const $CopyWithPlaceholder(),
  }) {
    return MeditationDuring(
      activity: activity == const $CopyWithPlaceholder() || activity == null
          // ignore: unnecessary_non_null_assertion
          ? _value.activity!
          // ignore: cast_nullable_to_non_nullable
          : activity as Activity,
      sessionStopped: sessionStopped == const $CopyWithPlaceholder() ||
              sessionStopped == null
          // ignore: unnecessary_non_null_assertion
          ? _value.sessionStopped!
          // ignore: cast_nullable_to_non_nullable
          : sessionStopped as bool,
    );
  }
}

extension $MeditationDuringCopyWith on MeditationDuring {
  /// Returns a callable class that can be used as follows: `instanceOfMeditationDuring.copyWith(...)` or like so:`instanceOfMeditationDuring.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MeditationDuringCWProxy get copyWith => _$MeditationDuringCWProxyImpl(this);
}
