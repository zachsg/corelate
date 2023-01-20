// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breathwork.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BreathworkCWProxy {
  Breathwork type(BreathworkType type);

  Breathwork rounds(int rounds);

  Breathwork breathsPerRound(int breathsPerRound);

  Breathwork holdSecondsPerRound(List<int>? holdSecondsPerRound);

  Breathwork rating(double? rating);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Breathwork(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Breathwork(...).copyWith(id: 12, name: "My name")
  /// ````
  Breathwork call({
    BreathworkType? type,
    int? rounds,
    int? breathsPerRound,
    List<int>? holdSecondsPerRound,
    double? rating,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBreathwork.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBreathwork.copyWith.fieldName(...)`
class _$BreathworkCWProxyImpl implements _$BreathworkCWProxy {
  const _$BreathworkCWProxyImpl(this._value);

  final Breathwork _value;

  @override
  Breathwork type(BreathworkType type) => this(type: type);

  @override
  Breathwork rounds(int rounds) => this(rounds: rounds);

  @override
  Breathwork breathsPerRound(int breathsPerRound) =>
      this(breathsPerRound: breathsPerRound);

  @override
  Breathwork holdSecondsPerRound(List<int>? holdSecondsPerRound) =>
      this(holdSecondsPerRound: holdSecondsPerRound);

  @override
  Breathwork rating(double? rating) => this(rating: rating);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Breathwork(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Breathwork(...).copyWith(id: 12, name: "My name")
  /// ````
  Breathwork call({
    Object? type = const $CopyWithPlaceholder(),
    Object? rounds = const $CopyWithPlaceholder(),
    Object? breathsPerRound = const $CopyWithPlaceholder(),
    Object? holdSecondsPerRound = const $CopyWithPlaceholder(),
    Object? rating = const $CopyWithPlaceholder(),
  }) {
    return Breathwork(
      type: type == const $CopyWithPlaceholder() || type == null
          // ignore: unnecessary_non_null_assertion
          ? _value.type!
          // ignore: cast_nullable_to_non_nullable
          : type as BreathworkType,
      rounds: rounds == const $CopyWithPlaceholder() || rounds == null
          // ignore: unnecessary_non_null_assertion
          ? _value.rounds!
          // ignore: cast_nullable_to_non_nullable
          : rounds as int,
      breathsPerRound: breathsPerRound == const $CopyWithPlaceholder() ||
              breathsPerRound == null
          // ignore: unnecessary_non_null_assertion
          ? _value.breathsPerRound!
          // ignore: cast_nullable_to_non_nullable
          : breathsPerRound as int,
      holdSecondsPerRound: holdSecondsPerRound == const $CopyWithPlaceholder()
          ? _value.holdSecondsPerRound
          // ignore: cast_nullable_to_non_nullable
          : holdSecondsPerRound as List<int>?,
      rating: rating == const $CopyWithPlaceholder()
          ? _value.rating
          // ignore: cast_nullable_to_non_nullable
          : rating as double?,
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
    r'breathsPerRound': PropertySchema(
      id: 0,
      name: r'breathsPerRound',
      type: IsarType.long,
    ),
    r'holdSecondsPerRound': PropertySchema(
      id: 1,
      name: r'holdSecondsPerRound',
      type: IsarType.longList,
    ),
    r'rating': PropertySchema(
      id: 2,
      name: r'rating',
      type: IsarType.double,
    ),
    r'rounds': PropertySchema(
      id: 3,
      name: r'rounds',
      type: IsarType.long,
    ),
    r'type': PropertySchema(
      id: 4,
      name: r'type',
      type: IsarType.byte,
      enumMap: _BreathworktypeEnumValueMap,
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
  {
    final value = object.holdSecondsPerRound;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  return bytesCount;
}

void _breathworkSerialize(
  Breathwork object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.breathsPerRound);
  writer.writeLongList(offsets[1], object.holdSecondsPerRound);
  writer.writeDouble(offsets[2], object.rating);
  writer.writeLong(offsets[3], object.rounds);
  writer.writeByte(offsets[4], object.type.index);
}

Breathwork _breathworkDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Breathwork(
    breathsPerRound: reader.readLongOrNull(offsets[0]) ?? 0,
    holdSecondsPerRound: reader.readLongList(offsets[1]),
    rating: reader.readDoubleOrNull(offsets[2]),
    rounds: reader.readLongOrNull(offsets[3]) ?? 4,
    type: _BreathworktypeValueEnumMap[reader.readByteOrNull(offsets[4])] ??
        BreathworkType.four78,
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
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 1:
      return (reader.readLongList(offset)) as P;
    case 2:
      return (reader.readDoubleOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset) ?? 4) as P;
    case 4:
      return (_BreathworktypeValueEnumMap[reader.readByteOrNull(offset)] ??
          BreathworkType.four78) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _BreathworktypeEnumValueMap = {
  'four78': 0,
  'wimHof': 1,
};
const _BreathworktypeValueEnumMap = {
  0: BreathworkType.four78,
  1: BreathworkType.wimHof,
};

extension BreathworkQueryFilter
    on QueryBuilder<Breathwork, Breathwork, QFilterCondition> {
  QueryBuilder<Breathwork, Breathwork, QAfterFilterCondition>
      breathsPerRoundEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'breathsPerRound',
        value: value,
      ));
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterFilterCondition>
      breathsPerRoundGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'breathsPerRound',
        value: value,
      ));
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterFilterCondition>
      breathsPerRoundLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'breathsPerRound',
        value: value,
      ));
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterFilterCondition>
      breathsPerRoundBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'breathsPerRound',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterFilterCondition>
      holdSecondsPerRoundIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'holdSecondsPerRound',
      ));
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterFilterCondition>
      holdSecondsPerRoundIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'holdSecondsPerRound',
      ));
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterFilterCondition>
      holdSecondsPerRoundElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'holdSecondsPerRound',
        value: value,
      ));
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterFilterCondition>
      holdSecondsPerRoundElementGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'holdSecondsPerRound',
        value: value,
      ));
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterFilterCondition>
      holdSecondsPerRoundElementLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'holdSecondsPerRound',
        value: value,
      ));
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterFilterCondition>
      holdSecondsPerRoundElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'holdSecondsPerRound',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterFilterCondition>
      holdSecondsPerRoundLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'holdSecondsPerRound',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterFilterCondition>
      holdSecondsPerRoundIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'holdSecondsPerRound',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterFilterCondition>
      holdSecondsPerRoundIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'holdSecondsPerRound',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterFilterCondition>
      holdSecondsPerRoundLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'holdSecondsPerRound',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterFilterCondition>
      holdSecondsPerRoundLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'holdSecondsPerRound',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterFilterCondition>
      holdSecondsPerRoundLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'holdSecondsPerRound',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterFilterCondition> ratingIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rating',
      ));
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterFilterCondition>
      ratingIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rating',
      ));
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterFilterCondition> ratingEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rating',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterFilterCondition> ratingGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rating',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterFilterCondition> ratingLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rating',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterFilterCondition> ratingBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rating',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterFilterCondition> roundsEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rounds',
        value: value,
      ));
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterFilterCondition> roundsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rounds',
        value: value,
      ));
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterFilterCondition> roundsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rounds',
        value: value,
      ));
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterFilterCondition> roundsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rounds',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterFilterCondition> typeEqualTo(
      BreathworkType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterFilterCondition> typeGreaterThan(
    BreathworkType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterFilterCondition> typeLessThan(
    BreathworkType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterFilterCondition> typeBetween(
    BreathworkType lower,
    BreathworkType upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'type',
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
