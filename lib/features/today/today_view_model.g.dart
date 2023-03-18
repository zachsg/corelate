// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'today_view_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TodayViewModelCWProxy {
  TodayViewModel showingToday(bool showingToday);

  TodayViewModel fabExpanded(bool fabExpanded);

  TodayViewModel steps(int steps);

  TodayViewModel sleepMinutes(int sleepMinutes);

  TodayViewModel activities(List<ActivityModel> activities);

  TodayViewModel historyDate(DateTime historyDate);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TodayViewModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TodayViewModel(...).copyWith(id: 12, name: "My name")
  /// ````
  TodayViewModel call({
    bool? showingToday,
    bool? fabExpanded,
    int? steps,
    int? sleepMinutes,
    List<ActivityModel>? activities,
    DateTime? historyDate,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTodayViewModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTodayViewModel.copyWith.fieldName(...)`
class _$TodayViewModelCWProxyImpl implements _$TodayViewModelCWProxy {
  const _$TodayViewModelCWProxyImpl(this._value);

  final TodayViewModel _value;

  @override
  TodayViewModel showingToday(bool showingToday) =>
      this(showingToday: showingToday);

  @override
  TodayViewModel fabExpanded(bool fabExpanded) =>
      this(fabExpanded: fabExpanded);

  @override
  TodayViewModel steps(int steps) => this(steps: steps);

  @override
  TodayViewModel sleepMinutes(int sleepMinutes) =>
      this(sleepMinutes: sleepMinutes);

  @override
  TodayViewModel activities(List<ActivityModel> activities) =>
      this(activities: activities);

  @override
  TodayViewModel historyDate(DateTime historyDate) =>
      this(historyDate: historyDate);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TodayViewModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TodayViewModel(...).copyWith(id: 12, name: "My name")
  /// ````
  TodayViewModel call({
    Object? showingToday = const $CopyWithPlaceholder(),
    Object? fabExpanded = const $CopyWithPlaceholder(),
    Object? steps = const $CopyWithPlaceholder(),
    Object? sleepMinutes = const $CopyWithPlaceholder(),
    Object? activities = const $CopyWithPlaceholder(),
    Object? historyDate = const $CopyWithPlaceholder(),
  }) {
    return TodayViewModel(
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
      steps: steps == const $CopyWithPlaceholder() || steps == null
          ? _value.steps
          // ignore: cast_nullable_to_non_nullable
          : steps as int,
      sleepMinutes:
          sleepMinutes == const $CopyWithPlaceholder() || sleepMinutes == null
              ? _value.sleepMinutes
              // ignore: cast_nullable_to_non_nullable
              : sleepMinutes as int,
      activities:
          activities == const $CopyWithPlaceholder() || activities == null
              ? _value.activities
              // ignore: cast_nullable_to_non_nullable
              : activities as List<ActivityModel>,
      historyDate:
          historyDate == const $CopyWithPlaceholder() || historyDate == null
              ? _value.historyDate
              // ignore: cast_nullable_to_non_nullable
              : historyDate as DateTime,
    );
  }
}

extension $TodayViewModelCopyWith on TodayViewModel {
  /// Returns a callable class that can be used as follows: `instanceOfTodayViewModel.copyWith(...)` or like so:`instanceOfTodayViewModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TodayViewModelCWProxy get copyWith => _$TodayViewModelCWProxyImpl(this);
}
