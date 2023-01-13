// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intervention.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const InterventionSchema = Schema(
  name: r'Intervention',
  id: 7975142831500745519,
  properties: {},
  estimateSize: _interventionEstimateSize,
  serialize: _interventionSerialize,
  deserialize: _interventionDeserialize,
  deserializeProp: _interventionDeserializeProp,
);

int _interventionEstimateSize(
  Intervention object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _interventionSerialize(
  Intervention object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {}
Intervention _interventionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Intervention();
  return object;
}

P _interventionDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension InterventionQueryFilter
    on QueryBuilder<Intervention, Intervention, QFilterCondition> {}

extension InterventionQueryObject
    on QueryBuilder<Intervention, Intervention, QFilterCondition> {}
