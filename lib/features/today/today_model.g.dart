// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'today_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TodayModelCWProxy {
  TodayModel showingToday(bool showingToday);

  TodayModel fabExpanded(bool fabExpanded);

  TodayModel activities(List<Activity> activities);

  TodayModel historyDate(DateTime historyDate);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TodayModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TodayModel(...).copyWith(id: 12, name: "My name")
  /// ````
  TodayModel call({
    bool? showingToday,
    bool? fabExpanded,
    List<Activity>? activities,
    DateTime? historyDate,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTodayModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTodayModel.copyWith.fieldName(...)`
class _$TodayModelCWProxyImpl implements _$TodayModelCWProxy {
  const _$TodayModelCWProxyImpl(this._value);

  final TodayModel _value;

  @override
  TodayModel showingToday(bool showingToday) =>
      this(showingToday: showingToday);

  @override
  TodayModel fabExpanded(bool fabExpanded) => this(fabExpanded: fabExpanded);

  @override
  TodayModel activities(List<Activity> activities) =>
      this(activities: activities);

  @override
  TodayModel historyDate(DateTime historyDate) =>
      this(historyDate: historyDate);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TodayModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TodayModel(...).copyWith(id: 12, name: "My name")
  /// ````
  TodayModel call({
    Object? showingToday = const $CopyWithPlaceholder(),
    Object? fabExpanded = const $CopyWithPlaceholder(),
    Object? activities = const $CopyWithPlaceholder(),
    Object? historyDate = const $CopyWithPlaceholder(),
  }) {
    return TodayModel(
      showingToday:
          showingToday == const $CopyWithPlaceholder() || showingToday == null
              ? _value.showingToday
              // ignore: cast_nullable_to_non_nullable
              : showingToday as bool,
      fabExpanded:
          fabExpanded == const $CopyWithPlaceholder() || fabExpanded == null
              ? _value.fabExpanded
              // ignore: cast_nullable_to_non_nullable
              : fabExpanded as bool,
      activities:
          activities == const $CopyWithPlaceholder() || activities == null
              ? _value.activities
              // ignore: cast_nullable_to_non_nullable
              : activities as List<Activity>,
      historyDate:
          historyDate == const $CopyWithPlaceholder() || historyDate == null
              ? _value.historyDate
              // ignore: cast_nullable_to_non_nullable
              : historyDate as DateTime,
    );
  }
}

extension $TodayModelCopyWith on TodayModel {
  /// Returns a callable class that can be used as follows: `instanceOfTodayModel.copyWith(...)` or like so:`instanceOfTodayModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TodayModelCWProxy get copyWith => _$TodayModelCWProxyImpl(this);
}
