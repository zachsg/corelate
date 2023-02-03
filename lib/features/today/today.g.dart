// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'today.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TodayCWProxy {
  Today showingToday(bool showingToday);

  Today fabExpanded(bool fabExpanded);

  Today activities(List<Activity> activities);

  Today historyDate(DateTime historyDate);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Today(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Today(...).copyWith(id: 12, name: "My name")
  /// ````
  Today call({
    bool? showingToday,
    bool? fabExpanded,
    List<Activity>? activities,
    DateTime? historyDate,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfToday.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfToday.copyWith.fieldName(...)`
class _$TodayCWProxyImpl implements _$TodayCWProxy {
  const _$TodayCWProxyImpl(this._value);

  final Today _value;

  @override
  Today showingToday(bool showingToday) => this(showingToday: showingToday);

  @override
  Today fabExpanded(bool fabExpanded) => this(fabExpanded: fabExpanded);

  @override
  Today activities(List<Activity> activities) => this(activities: activities);

  @override
  Today historyDate(DateTime historyDate) => this(historyDate: historyDate);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Today(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Today(...).copyWith(id: 12, name: "My name")
  /// ````
  Today call({
    Object? showingToday = const $CopyWithPlaceholder(),
    Object? fabExpanded = const $CopyWithPlaceholder(),
    Object? activities = const $CopyWithPlaceholder(),
    Object? historyDate = const $CopyWithPlaceholder(),
  }) {
    return Today(
      showingToday:
          showingToday == const $CopyWithPlaceholder() || showingToday == null
              // ignore: unnecessary_non_null_assertion
              ? _value.showingToday!
              // ignore: cast_nullable_to_non_nullable
              : showingToday as bool,
      fabExpanded:
          fabExpanded == const $CopyWithPlaceholder() || fabExpanded == null
              // ignore: unnecessary_non_null_assertion
              ? _value.fabExpanded!
              // ignore: cast_nullable_to_non_nullable
              : fabExpanded as bool,
      activities:
          activities == const $CopyWithPlaceholder() || activities == null
              // ignore: unnecessary_non_null_assertion
              ? _value.activities!
              // ignore: cast_nullable_to_non_nullable
              : activities as List<Activity>,
      historyDate:
          historyDate == const $CopyWithPlaceholder() || historyDate == null
              // ignore: unnecessary_non_null_assertion
              ? _value.historyDate!
              // ignore: cast_nullable_to_non_nullable
              : historyDate as DateTime,
    );
  }
}

extension $TodayCopyWith on Today {
  /// Returns a callable class that can be used as follows: `instanceOfToday.copyWith(...)` or like so:`instanceOfToday.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TodayCWProxy get copyWith => _$TodayCWProxyImpl(this);
}
