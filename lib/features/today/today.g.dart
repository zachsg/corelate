// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'today.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dateCHash() => r'ca3eb29dcba1299ea01c4957c123c13e7dd9e2c9';

/// See also [DateC].
@ProviderFor(DateC)
final dateCProvider = AutoDisposeNotifierProvider<DateC, DateTime>.internal(
  DateC.new,
  name: r'dateCProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$dateCHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$DateC = AutoDisposeNotifier<DateTime>;
String _$todayHash() => r'9dafe741e7b4679b2fb305cad9f47929e87e7ca4';

/// See also [Today].
@ProviderFor(Today)
final todayProvider = NotifierProvider<Today, TodayModel>.internal(
  Today.new,
  name: r'todayProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$todayHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Today = Notifier<TodayModel>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
