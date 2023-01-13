// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breathwork.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BreathworkCWProxy {
  Breathwork placeholder(int? placeholder);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Breathwork(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Breathwork(...).copyWith(id: 12, name: "My name")
  /// ````
  Breathwork call({
    int? placeholder,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBreathwork.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBreathwork.copyWith.fieldName(...)`
class _$BreathworkCWProxyImpl implements _$BreathworkCWProxy {
  const _$BreathworkCWProxyImpl(this._value);

  final Breathwork _value;

  @override
  Breathwork placeholder(int? placeholder) => this(placeholder: placeholder);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Breathwork(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Breathwork(...).copyWith(id: 12, name: "My name")
  /// ````
  Breathwork call({
    Object? placeholder = const $CopyWithPlaceholder(),
  }) {
    return Breathwork(
      placeholder: placeholder == const $CopyWithPlaceholder()
          ? _value.placeholder
          // ignore: cast_nullable_to_non_nullable
          : placeholder as int?,
    );
  }
}

extension $BreathworkCopyWith on Breathwork {
  /// Returns a callable class that can be used as follows: `instanceOfBreathwork.copyWith(...)` or like so:`instanceOfBreathwork.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BreathworkCWProxy get copyWith => _$BreathworkCWProxyImpl(this);
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const BreathworkSchema = Schema(
  name: r'Breathwork',
  id: -5543349516693467140,
  properties: {
    r'placeholder': PropertySchema(
      id: 0,
      name: r'placeholder',
      type: IsarType.long,
    )
  },
  estimateSize: _breathworkEstimateSize,
  serialize: _breathworkSerialize,
  deserialize: _breathworkDeserialize,
  deserializeProp: _breathworkDeserializeProp,
);

int _breathworkEstimateSize(
  Breathwork object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _breathworkSerialize(
  Breathwork object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.placeholder);
}

Breathwork _breathworkDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Breathwork(
    placeholder: reader.readLongOrNull(offsets[0]),
  );
  return object;
}

P _breathworkDeserializeProp<P>(
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

extension BreathworkQueryFilter
    on QueryBuilder<Breathwork, Breathwork, QFilterCondition> {
  QueryBuilder<Breathwork, Breathwork, QAfterFilterCondition>
      placeholderIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'placeholder',
      ));
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterFilterCondition>
      placeholderIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'placeholder',
      ));
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterFilterCondition>
      placeholderEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'placeholder',
        value: value,
      ));
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterFilterCondition>
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

  QueryBuilder<Breathwork, Breathwork, QAfterFilterCondition>
      placeholderLessThan(
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

  QueryBuilder<Breathwork, Breathwork, QAfterFilterCondition>
      placeholderBetween(
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

extension BreathworkQueryObject
    on QueryBuilder<Breathwork, Breathwork, QFilterCondition> {}
