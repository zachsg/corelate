// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'today_c.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

String _$DateCHash() => r'ca3eb29dcba1299ea01c4957c123c13e7dd9e2c9';

/// See also [DateC].
final dateCProvider = AutoDisposeNotifierProvider<DateC, DateTime>(
  DateC.new,
  name: r'dateCProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$DateCHash,
);
typedef DateCRef = AutoDisposeNotifierProviderRef<DateTime>;

abstract class _$DateC extends AutoDisposeNotifier<DateTime> {
  @override
  DateTime build();
}

String _$TodayCHash() => r'd12d7a5bbc83b8602623b8ed7a9cb29fd97a6430';

/// See also [TodayC].
final todayCProvider = NotifierProvider<TodayC, Today>(
  TodayC.new,
  name: r'todayCProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$TodayCHash,
);
typedef TodayCRef = NotifierProviderRef<Today>;

abstract class _$TodayC extends Notifier<Today> {
  @override
  Today build();
}
