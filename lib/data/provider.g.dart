// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

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

String _$isarCHash() => r'cecb37fa35b5d077eef9972286131c311508f202';

/// See also [isarC].
final isarCProvider = FutureProvider<Isar>(
  isarC,
  name: r'isarCProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$isarCHash,
);
typedef IsarCRef = FutureProviderRef<Isar>;
String _$databaseCHash() => r'74f71e50f17cfe2309fe92689acb97a989b71abb';

/// See also [databaseC].
final databaseCProvider = AutoDisposeFutureProvider<Database>(
  databaseC,
  name: r'databaseCProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$databaseCHash,
);
typedef DatabaseCRef = AutoDisposeFutureProviderRef<Database>;
