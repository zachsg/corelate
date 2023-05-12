// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'today.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dateHash() => r'bdb5abdc8321839413fcd2bc814b094f3877f184';

/// See also [Date].
@ProviderFor(Date)
final dateProvider = AutoDisposeNotifierProvider<Date, DateTime>.internal(
  Date.new,
  name: r'dateProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$dateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Date = AutoDisposeNotifier<DateTime>;
String _$todayHash() => r'5803b58b85853d6c1bfec83e8fc85bddef58e915';

/// See also [Today].
@ProviderFor(Today)
final todayProvider = NotifierProvider<Today, TodayViewModel>.internal(
  Today.new,
  name: r'todayProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$todayHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Today = Notifier<TodayViewModel>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
