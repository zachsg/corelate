// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meditation.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MeditationCWProxy {
  Meditation type(MeditationType type);

  Meditation goal(int? goal);

  Meditation rating(double? rating);

  Meditation elapsed(int elapsed);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Meditation(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Meditation(...).copyWith(id: 12, name: "My name")
  /// ````
  Meditation call({
    MeditationType? type,
    int? goal,
    double? rating,
    int? elapsed,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMeditation.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMeditation.copyWith.fieldName(...)`
class _$MeditationCWProxyImpl implements _$MeditationCWProxy {
  const _$MeditationCWProxyImpl(this._value);

  final Meditation _value;

  @override
  Meditation type(MeditationType type) => this(type: type);

  @override
  Meditation goal(int? goal) => this(goal: goal);

  @override
  Meditation rating(double? rating) => this(rating: rating);

  @override
  Meditation elapsed(int elapsed) => this(elapsed: elapsed);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Meditation(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Meditation(...).copyWith(id: 12, name: "My name")
  /// ````
  Meditation call({
    Object? type = const $CopyWithPlaceholder(),
    Object? goal = const $CopyWithPlaceholder(),
    Object? rating = const $CopyWithPlaceholder(),
    Object? elapsed = const $CopyWithPlaceholder(),
  }) {
    return Meditation(
      type: type == const $CopyWithPlaceholder() || type == null
          // ignore: unnecessary_non_null_assertion
          ? _value.type!
          // ignore: cast_nullable_to_non_nullable
          : type as MeditationType,
      goal: goal == const $CopyWithPlaceholder()
          ? _value.goal
          // ignore: cast_nullable_to_non_nullable
          : goal as int?,
      rating: rating == const $CopyWithPlaceholder()
          ? _value.rating
          // ignore: cast_nullable_to_non_nullable
          : rating as double?,
      elapsed: elapsed == const $CopyWithPlaceholder() || elapsed == null
          // ignore: unnecessary_non_null_assertion
          ? _value.elapsed!
          // ignore: cast_nullable_to_non_nullable
          : elapsed as int,
    );
  }
}

extension $MeditationCopyWith on Meditation {
  /// Returns a callable class that can be used as follows: `instanceOfMeditation.copyWith(...)` or like so:`instanceOfMeditation.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MeditationCWProxy get copyWith => _$MeditationCWProxyImpl(this);
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const MeditationSchema = Schema(
  name: r'Meditation',
  id: -4241823163203330657,
  properties: {
    r'elapsed': PropertySchema(
      id: 0,
      name: r'elapsed',
      type: IsarType.long,
    ),
    r'goal': PropertySchema(
      id: 1,
      name: r'goal',
      type: IsarType.long,
    ),
    r'rating': PropertySchema(
      id: 2,
      name: r'rating',
      type: IsarType.double,
    ),
    r'type': PropertySchema(
      id: 3,
      name: r'type',
      type: IsarType.byte,
      enumMap: _MeditationtypeEnumValueMap,
    )
  },
  estimateSize: _meditationEstimateSize,
  serialize: _meditationSerialize,
  deserialize: _meditationDeserialize,
  deserializeProp: _meditationDeserializeProp,
);

int _meditationEstimateSize(
  Meditation object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _meditationSerialize(
  Meditation object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.elapsed);
  writer.writeLong(offsets[1], object.goal);
  writer.writeDouble(offsets[2], object.rating);
  writer.writeByte(offsets[3], object.type.index);
}

Meditation _meditationDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Meditation(
    elapsed: reader.readLongOrNull(offsets[0]) ?? 0,
    goal: reader.readLongOrNull(offsets[1]),
    rating: reader.readDoubleOrNull(offsets[2]),
    type: _MeditationtypeValueEnumMap[reader.readByteOrNull(offsets[3])] ??
        MeditationType.timed,
  );
  return object;
}

P _meditationDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readDoubleOrNull(offset)) as P;
    case 3:
      return (_MeditationtypeValueEnumMap[reader.readByteOrNull(offset)] ??
          MeditationType.timed) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _MeditationtypeEnumValueMap = {
  'openEnded': 0,
  'timed': 1,
};
const _MeditationtypeValueEnumMap = {
  0: MeditationType.openEnded,
  1: MeditationType.timed,
};

extension MeditationQueryFilter
    on QueryBuilder<Meditation, Meditation, QFilterCondition> {
  QueryBuilder<Meditation, Meditation, QAfterFilterCondition> elapsedEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'elapsed',
        value: value,
      ));
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterFilterCondition>
      elapsedGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'elapsed',
        value: value,
      ));
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterFilterCondition> elapsedLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'elapsed',
        value: value,
      ));
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterFilterCondition> elapsedBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'elapsed',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterFilterCondition> goalIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'goal',
      ));
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterFilterCondition> goalIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'goal',
      ));
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterFilterCondition> goalEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'goal',
        value: value,
      ));
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterFilterCondition> goalGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'goal',
        value: value,
      ));
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterFilterCondition> goalLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'goal',
        value: value,
      ));
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterFilterCondition> goalBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'goal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterFilterCondition> ratingIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rating',
      ));
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterFilterCondition>
      ratingIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rating',
      ));
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterFilterCondition> ratingEqualTo(
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

  QueryBuilder<Meditation, Meditation, QAfterFilterCondition> ratingGreaterThan(
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

  QueryBuilder<Meditation, Meditation, QAfterFilterCondition> ratingLessThan(
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

  QueryBuilder<Meditation, Meditation, QAfterFilterCondition> ratingBetween(
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

  QueryBuilder<Meditation, Meditation, QAfterFilterCondition> typeEqualTo(
      MeditationType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterFilterCondition> typeGreaterThan(
    MeditationType value, {
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

  QueryBuilder<Meditation, Meditation, QAfterFilterCondition> typeLessThan(
    MeditationType value, {
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

  QueryBuilder<Meditation, Meditation, QAfterFilterCondition> typeBetween(
    MeditationType lower,
    MeditationType upper, {
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

extension MeditationQueryObject
    on QueryBuilder<Meditation, Meditation, QFilterCondition> {}
