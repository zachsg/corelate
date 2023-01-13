// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grounding.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$GroundingCWProxy {
  Grounding placeholder(int? placeholder);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Grounding(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Grounding(...).copyWith(id: 12, name: "My name")
  /// ````
  Grounding call({
    int? placeholder,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfGrounding.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfGrounding.copyWith.fieldName(...)`
class _$GroundingCWProxyImpl implements _$GroundingCWProxy {
  const _$GroundingCWProxyImpl(this._value);

  final Grounding _value;

  @override
  Grounding placeholder(int? placeholder) => this(placeholder: placeholder);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Grounding(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Grounding(...).copyWith(id: 12, name: "My name")
  /// ````
  Grounding call({
    Object? placeholder = const $CopyWithPlaceholder(),
  }) {
    return Grounding(
      placeholder: placeholder == const $CopyWithPlaceholder()
          ? _value.placeholder
          // ignore: cast_nullable_to_non_nullable
          : placeholder as int?,
    );
  }
}

extension $GroundingCopyWith on Grounding {
  /// Returns a callable class that can be used as follows: `instanceOfGrounding.copyWith(...)` or like so:`instanceOfGrounding.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$GroundingCWProxy get copyWith => _$GroundingCWProxyImpl(this);
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const GroundingSchema = Schema(
  name: r'Grounding',
  id: 1634873462592288259,
  properties: {
    r'placeholder': PropertySchema(
      id: 0,
      name: r'placeholder',
      type: IsarType.long,
    )
  },
  estimateSize: _groundingEstimateSize,
  serialize: _groundingSerialize,
  deserialize: _groundingDeserialize,
  deserializeProp: _groundingDeserializeProp,
);

int _groundingEstimateSize(
  Grounding object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _groundingSerialize(
  Grounding object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.placeholder);
}

Grounding _groundingDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Grounding(
    placeholder: reader.readLongOrNull(offsets[0]),
  );
  return object;
}

P _groundingDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension GroundingQueryFilter
    on QueryBuilder<Grounding, Grounding, QFilterCondition> {
  QueryBuilder<Grounding, Grounding, QAfterFilterCondition>
      placeholderIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'placeholder',
      ));
    });
  }

  QueryBuilder<Grounding, Grounding, QAfterFilterCondition>
      placeholderIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'placeholder',
      ));
    });
  }

  QueryBuilder<Grounding, Grounding, QAfterFilterCondition> placeholderEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'placeholder',
        value: value,
      ));
    });
  }

  QueryBuilder<Grounding, Grounding, QAfterFilterCondition>
      placeholderGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'placeholder',
        value: value,
      ));
    });
  }

  QueryBuilder<Grounding, Grounding, QAfterFilterCondition> placeholderLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'placeholder',
        value: value,
      ));
    });
  }

  QueryBuilder<Grounding, Grounding, QAfterFilterCondition> placeholderBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'placeholder',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension GroundingQueryObject
    on QueryBuilder<Grounding, Grounding, QFilterCondition> {}
