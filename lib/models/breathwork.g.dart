// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breathwork.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BreathworkCWProxy {
  Breathwork date(DateTime date);

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
    DateTime? date,
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
  Breathwork date(DateTime date) => this(date: date);

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
    Object? date = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
    Object? rounds = const $CopyWithPlaceholder(),
    Object? breathsPerRound = const $CopyWithPlaceholder(),
    Object? holdSecondsPerRound = const $CopyWithPlaceholder(),
    Object? rating = const $CopyWithPlaceholder(),
  }) {
    return Breathwork(
      date: date == const $CopyWithPlaceholder() || date == null
          ? _value.date
          // ignore: cast_nullable_to_non_nullable
          : date as DateTime,
      type: type == const $CopyWithPlaceholder() || type == null
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as BreathworkType,
      rounds: rounds == const $CopyWithPlaceholder() || rounds == null
          ? _value.rounds
          // ignore: cast_nullable_to_non_nullable
          : rounds as int,
      breathsPerRound: breathsPerRound == const $CopyWithPlaceholder() ||
              breathsPerRound == null
          ? _value.breathsPerRound
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
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetBreathworkCollection on Isar {
  IsarCollection<Breathwork> get breathworks => this.collection();
}

const BreathworkSchema = CollectionSchema(
  name: r'Breathwork',
  id: -5543349516693467140,
  properties: {
    r'breathsPerRound': PropertySchema(
      id: 0,
      name: r'breathsPerRound',
      type: IsarType.long,
    ),
    r'date': PropertySchema(
      id: 1,
      name: r'date',
      type: IsarType.dateTime,
    ),
    r'holdSecondsPerRound': PropertySchema(
      id: 2,
      name: r'holdSecondsPerRound',
      type: IsarType.longList,
    ),
    r'rating': PropertySchema(
      id: 3,
      name: r'rating',
      type: IsarType.double,
    ),
    r'rounds': PropertySchema(
      id: 4,
      name: r'rounds',
      type: IsarType.long,
    ),
    r'type': PropertySchema(
      id: 5,
      name: r'type',
      type: IsarType.byte,
      enumMap: _BreathworktypeEnumValueMap,
    )
  },
  estimateSize: _breathworkEstimateSize,
  serialize: _breathworkSerialize,
  deserialize: _breathworkDeserialize,
  deserializeProp: _breathworkDeserializeProp,
  idName: r'id',
  indexes: {
    r'date': IndexSchema(
      id: -7552997827385218417,
      name: r'date',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'date',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _breathworkGetId,
  getLinks: _breathworkGetLinks,
  attach: _breathworkAttach,
  version: '3.0.5',
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
  writer.writeDateTime(offsets[1], object.date);
  writer.writeLongList(offsets[2], object.holdSecondsPerRound);
  writer.writeDouble(offsets[3], object.rating);
  writer.writeLong(offsets[4], object.rounds);
  writer.writeByte(offsets[5], object.type.index);
}

Breathwork _breathworkDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Breathwork(
    breathsPerRound: reader.readLongOrNull(offsets[0]) ?? 0,
    date: reader.readDateTime(offsets[1]),
    holdSecondsPerRound: reader.readLongList(offsets[2]),
    rating: reader.readDoubleOrNull(offsets[3]),
    rounds: reader.readLongOrNull(offsets[4]) ?? 4,
    type: _BreathworktypeValueEnumMap[reader.readByteOrNull(offsets[5])] ??
        BreathworkType.four78,
  );
  object.id = id;
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
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readLongList(offset)) as P;
    case 3:
      return (reader.readDoubleOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset) ?? 4) as P;
    case 5:
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

Id _breathworkGetId(Breathwork object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _breathworkGetLinks(Breathwork object) {
  return [];
}

void _breathworkAttach(IsarCollection<dynamic> col, Id id, Breathwork object) {
  object.id = id;
}

extension BreathworkQueryWhereSort
    on QueryBuilder<Breathwork, Breathwork, QWhere> {
  QueryBuilder<Breathwork, Breathwork, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterWhere> anyDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'date'),
      );
    });
  }
}

extension BreathworkQueryWhere
    on QueryBuilder<Breathwork, Breathwork, QWhereClause> {
  QueryBuilder<Breathwork, Breathwork, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterWhereClause> dateEqualTo(
      DateTime date) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'date',
        value: [date],
      ));
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterWhereClause> dateNotEqualTo(
      DateTime date) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'date',
              lower: [],
              upper: [date],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'date',
              lower: [date],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'date',
              lower: [date],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'date',
              lower: [],
              upper: [date],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterWhereClause> dateGreaterThan(
    DateTime date, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'date',
        lower: [date],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterWhereClause> dateLessThan(
    DateTime date, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'date',
        lower: [],
        upper: [date],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterWhereClause> dateBetween(
    DateTime lowerDate,
    DateTime upperDate, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'date',
        lower: [lowerDate],
        includeLower: includeLower,
        upper: [upperDate],
        includeUpper: includeUpper,
      ));
    });
  }
}

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

  QueryBuilder<Breathwork, Breathwork, QAfterFilterCondition> dateEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterFilterCondition> dateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterFilterCondition> dateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterFilterCondition> dateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'date',
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

  QueryBuilder<Breathwork, Breathwork, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
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

extension BreathworkQueryLinks
    on QueryBuilder<Breathwork, Breathwork, QFilterCondition> {}

extension BreathworkQuerySortBy
    on QueryBuilder<Breathwork, Breathwork, QSortBy> {
  QueryBuilder<Breathwork, Breathwork, QAfterSortBy> sortByBreathsPerRound() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'breathsPerRound', Sort.asc);
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterSortBy>
      sortByBreathsPerRoundDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'breathsPerRound', Sort.desc);
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterSortBy> sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterSortBy> sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterSortBy> sortByRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rating', Sort.asc);
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterSortBy> sortByRatingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rating', Sort.desc);
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterSortBy> sortByRounds() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rounds', Sort.asc);
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterSortBy> sortByRoundsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rounds', Sort.desc);
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterSortBy> sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }
}

extension BreathworkQuerySortThenBy
    on QueryBuilder<Breathwork, Breathwork, QSortThenBy> {
  QueryBuilder<Breathwork, Breathwork, QAfterSortBy> thenByBreathsPerRound() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'breathsPerRound', Sort.asc);
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterSortBy>
      thenByBreathsPerRoundDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'breathsPerRound', Sort.desc);
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterSortBy> thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterSortBy> thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterSortBy> thenByRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rating', Sort.asc);
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterSortBy> thenByRatingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rating', Sort.desc);
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterSortBy> thenByRounds() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rounds', Sort.asc);
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterSortBy> thenByRoundsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rounds', Sort.desc);
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<Breathwork, Breathwork, QAfterSortBy> thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }
}

extension BreathworkQueryWhereDistinct
    on QueryBuilder<Breathwork, Breathwork, QDistinct> {
  QueryBuilder<Breathwork, Breathwork, QDistinct> distinctByBreathsPerRound() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'breathsPerRound');
    });
  }

  QueryBuilder<Breathwork, Breathwork, QDistinct> distinctByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'date');
    });
  }

  QueryBuilder<Breathwork, Breathwork, QDistinct>
      distinctByHoldSecondsPerRound() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'holdSecondsPerRound');
    });
  }

  QueryBuilder<Breathwork, Breathwork, QDistinct> distinctByRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rating');
    });
  }

  QueryBuilder<Breathwork, Breathwork, QDistinct> distinctByRounds() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rounds');
    });
  }

  QueryBuilder<Breathwork, Breathwork, QDistinct> distinctByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type');
    });
  }
}

extension BreathworkQueryProperty
    on QueryBuilder<Breathwork, Breathwork, QQueryProperty> {
  QueryBuilder<Breathwork, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Breathwork, int, QQueryOperations> breathsPerRoundProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'breathsPerRound');
    });
  }

  QueryBuilder<Breathwork, DateTime, QQueryOperations> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'date');
    });
  }

  QueryBuilder<Breathwork, List<int>?, QQueryOperations>
      holdSecondsPerRoundProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'holdSecondsPerRound');
    });
  }

  QueryBuilder<Breathwork, double?, QQueryOperations> ratingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rating');
    });
  }

  QueryBuilder<Breathwork, int, QQueryOperations> roundsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rounds');
    });
  }

  QueryBuilder<Breathwork, BreathworkType, QQueryOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }
}
