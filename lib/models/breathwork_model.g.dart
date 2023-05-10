// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breathwork_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BreathworkModelCWProxy {
  BreathworkModel date(DateTime date);

  BreathworkModel stress(int stress);

  BreathworkModel mood(int mood);

  BreathworkModel energy(int energy);

  BreathworkModel type(BreathworkType type);

  BreathworkModel rounds(int rounds);

  BreathworkModel breathsPerRound(int breathsPerRound);

  BreathworkModel holdSecondsPerRound(List<int>? holdSecondsPerRound);

  BreathworkModel rating(double? rating);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BreathworkModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BreathworkModel(...).copyWith(id: 12, name: "My name")
  /// ````
  BreathworkModel call({
    DateTime? date,
    int? stress,
    int? mood,
    int? energy,
    BreathworkType? type,
    int? rounds,
    int? breathsPerRound,
    List<int>? holdSecondsPerRound,
    double? rating,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBreathworkModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBreathworkModel.copyWith.fieldName(...)`
class _$BreathworkModelCWProxyImpl implements _$BreathworkModelCWProxy {
  const _$BreathworkModelCWProxyImpl(this._value);

  final BreathworkModel _value;

  @override
  BreathworkModel date(DateTime date) => this(date: date);

  @override
  BreathworkModel stress(int stress) => this(stress: stress);

  @override
  BreathworkModel mood(int mood) => this(mood: mood);

  @override
  BreathworkModel energy(int energy) => this(energy: energy);

  @override
  BreathworkModel type(BreathworkType type) => this(type: type);

  @override
  BreathworkModel rounds(int rounds) => this(rounds: rounds);

  @override
  BreathworkModel breathsPerRound(int breathsPerRound) =>
      this(breathsPerRound: breathsPerRound);

  @override
  BreathworkModel holdSecondsPerRound(List<int>? holdSecondsPerRound) =>
      this(holdSecondsPerRound: holdSecondsPerRound);

  @override
  BreathworkModel rating(double? rating) => this(rating: rating);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BreathworkModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BreathworkModel(...).copyWith(id: 12, name: "My name")
  /// ````
  BreathworkModel call({
    Object? date = const $CopyWithPlaceholder(),
    Object? stress = const $CopyWithPlaceholder(),
    Object? mood = const $CopyWithPlaceholder(),
    Object? energy = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
    Object? rounds = const $CopyWithPlaceholder(),
    Object? breathsPerRound = const $CopyWithPlaceholder(),
    Object? holdSecondsPerRound = const $CopyWithPlaceholder(),
    Object? rating = const $CopyWithPlaceholder(),
  }) {
    return BreathworkModel(
      date: date == const $CopyWithPlaceholder() || date == null
          ? _value.date
          // ignore: cast_nullable_to_non_nullable
          : date as DateTime,
      stress: stress == const $CopyWithPlaceholder() || stress == null
          ? _value.stress
          // ignore: cast_nullable_to_non_nullable
          : stress as int,
      mood: mood == const $CopyWithPlaceholder() || mood == null
          ? _value.mood
          // ignore: cast_nullable_to_non_nullable
          : mood as int,
      energy: energy == const $CopyWithPlaceholder() || energy == null
          ? _value.energy
          // ignore: cast_nullable_to_non_nullable
          : energy as int,
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

extension $BreathworkModelCopyWith on BreathworkModel {
  /// Returns a callable class that can be used as follows: `instanceOfBreathworkModel.copyWith(...)` or like so:`instanceOfBreathworkModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BreathworkModelCWProxy get copyWith => _$BreathworkModelCWProxyImpl(this);
}

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetBreathworkModelCollection on Isar {
  IsarCollection<BreathworkModel> get breathworkModels => this.collection();
}

const BreathworkModelSchema = CollectionSchema(
  name: r'BreathworkModel',
  id: 1735121914970448057,
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
    r'energy': PropertySchema(
      id: 2,
      name: r'energy',
      type: IsarType.long,
    ),
    r'holdSecondsPerRound': PropertySchema(
      id: 3,
      name: r'holdSecondsPerRound',
      type: IsarType.longList,
    ),
    r'mood': PropertySchema(
      id: 4,
      name: r'mood',
      type: IsarType.long,
    ),
    r'rating': PropertySchema(
      id: 5,
      name: r'rating',
      type: IsarType.double,
    ),
    r'rounds': PropertySchema(
      id: 6,
      name: r'rounds',
      type: IsarType.long,
    ),
    r'stress': PropertySchema(
      id: 7,
      name: r'stress',
      type: IsarType.long,
    ),
    r'type': PropertySchema(
      id: 8,
      name: r'type',
      type: IsarType.byte,
      enumMap: _BreathworkModeltypeEnumValueMap,
    )
  },
  estimateSize: _breathworkModelEstimateSize,
  serialize: _breathworkModelSerialize,
  deserialize: _breathworkModelDeserialize,
  deserializeProp: _breathworkModelDeserializeProp,
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
  getId: _breathworkModelGetId,
  getLinks: _breathworkModelGetLinks,
  attach: _breathworkModelAttach,
  version: '3.1.0+1',
);

int _breathworkModelEstimateSize(
  BreathworkModel object,
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

void _breathworkModelSerialize(
  BreathworkModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.breathsPerRound);
  writer.writeDateTime(offsets[1], object.date);
  writer.writeLong(offsets[2], object.energy);
  writer.writeLongList(offsets[3], object.holdSecondsPerRound);
  writer.writeLong(offsets[4], object.mood);
  writer.writeDouble(offsets[5], object.rating);
  writer.writeLong(offsets[6], object.rounds);
  writer.writeLong(offsets[7], object.stress);
  writer.writeByte(offsets[8], object.type.index);
}

BreathworkModel _breathworkModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = BreathworkModel(
    breathsPerRound: reader.readLongOrNull(offsets[0]) ?? 0,
    date: reader.readDateTime(offsets[1]),
    energy: reader.readLongOrNull(offsets[2]) ?? 0,
    holdSecondsPerRound: reader.readLongList(offsets[3]),
    mood: reader.readLongOrNull(offsets[4]) ?? 0,
    rating: reader.readDoubleOrNull(offsets[5]),
    rounds: reader.readLongOrNull(offsets[6]) ?? 4,
    stress: reader.readLongOrNull(offsets[7]) ?? 0,
    type: _BreathworkModeltypeValueEnumMap[reader.readByteOrNull(offsets[8])] ??
        BreathworkType.four78,
  );
  object.id = id;
  return object;
}

P _breathworkModelDeserializeProp<P>(
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
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 3:
      return (reader.readLongList(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 5:
      return (reader.readDoubleOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset) ?? 4) as P;
    case 7:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 8:
      return (_BreathworkModeltypeValueEnumMap[reader.readByteOrNull(offset)] ??
          BreathworkType.four78) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _BreathworkModeltypeEnumValueMap = {
  'four78': 0,
  'wimHof': 1,
};
const _BreathworkModeltypeValueEnumMap = {
  0: BreathworkType.four78,
  1: BreathworkType.wimHof,
};

Id _breathworkModelGetId(BreathworkModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _breathworkModelGetLinks(BreathworkModel object) {
  return [];
}

void _breathworkModelAttach(
    IsarCollection<dynamic> col, Id id, BreathworkModel object) {
  object.id = id;
}

extension BreathworkModelQueryWhereSort
    on QueryBuilder<BreathworkModel, BreathworkModel, QWhere> {
  QueryBuilder<BreathworkModel, BreathworkModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterWhere> anyDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'date'),
      );
    });
  }
}

extension BreathworkModelQueryWhere
    on QueryBuilder<BreathworkModel, BreathworkModel, QWhereClause> {
  QueryBuilder<BreathworkModel, BreathworkModel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterWhereClause> idBetween(
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

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterWhereClause> dateEqualTo(
      DateTime date) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'date',
        value: [date],
      ));
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterWhereClause>
      dateNotEqualTo(DateTime date) {
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

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterWhereClause>
      dateGreaterThan(
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

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterWhereClause>
      dateLessThan(
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

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterWhereClause> dateBetween(
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

extension BreathworkModelQueryFilter
    on QueryBuilder<BreathworkModel, BreathworkModel, QFilterCondition> {
  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
      breathsPerRoundEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'breathsPerRound',
        value: value,
      ));
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
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

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
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

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
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

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
      dateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
      dateGreaterThan(
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

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
      dateLessThan(
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

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
      dateBetween(
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

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
      energyEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'energy',
        value: value,
      ));
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
      energyGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'energy',
        value: value,
      ));
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
      energyLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'energy',
        value: value,
      ));
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
      energyBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'energy',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
      holdSecondsPerRoundIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'holdSecondsPerRound',
      ));
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
      holdSecondsPerRoundIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'holdSecondsPerRound',
      ));
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
      holdSecondsPerRoundElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'holdSecondsPerRound',
        value: value,
      ));
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
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

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
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

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
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

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
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

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
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

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
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

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
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

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
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

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
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

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
      moodEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mood',
        value: value,
      ));
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
      moodGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mood',
        value: value,
      ));
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
      moodLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mood',
        value: value,
      ));
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
      moodBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mood',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
      ratingIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rating',
      ));
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
      ratingIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rating',
      ));
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
      ratingEqualTo(
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

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
      ratingGreaterThan(
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

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
      ratingLessThan(
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

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
      ratingBetween(
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

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
      roundsEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rounds',
        value: value,
      ));
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
      roundsGreaterThan(
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

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
      roundsLessThan(
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

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
      roundsBetween(
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

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
      stressEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stress',
        value: value,
      ));
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
      stressGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'stress',
        value: value,
      ));
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
      stressLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'stress',
        value: value,
      ));
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
      stressBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'stress',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
      typeEqualTo(BreathworkType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
      typeGreaterThan(
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

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
      typeLessThan(
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

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterFilterCondition>
      typeBetween(
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

extension BreathworkModelQueryObject
    on QueryBuilder<BreathworkModel, BreathworkModel, QFilterCondition> {}

extension BreathworkModelQueryLinks
    on QueryBuilder<BreathworkModel, BreathworkModel, QFilterCondition> {}

extension BreathworkModelQuerySortBy
    on QueryBuilder<BreathworkModel, BreathworkModel, QSortBy> {
  QueryBuilder<BreathworkModel, BreathworkModel, QAfterSortBy>
      sortByBreathsPerRound() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'breathsPerRound', Sort.asc);
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterSortBy>
      sortByBreathsPerRoundDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'breathsPerRound', Sort.desc);
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterSortBy> sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterSortBy>
      sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterSortBy> sortByEnergy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'energy', Sort.asc);
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterSortBy>
      sortByEnergyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'energy', Sort.desc);
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterSortBy> sortByMood() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mood', Sort.asc);
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterSortBy>
      sortByMoodDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mood', Sort.desc);
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterSortBy> sortByRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rating', Sort.asc);
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterSortBy>
      sortByRatingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rating', Sort.desc);
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterSortBy> sortByRounds() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rounds', Sort.asc);
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterSortBy>
      sortByRoundsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rounds', Sort.desc);
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterSortBy> sortByStress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stress', Sort.asc);
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterSortBy>
      sortByStressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stress', Sort.desc);
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterSortBy>
      sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }
}

extension BreathworkModelQuerySortThenBy
    on QueryBuilder<BreathworkModel, BreathworkModel, QSortThenBy> {
  QueryBuilder<BreathworkModel, BreathworkModel, QAfterSortBy>
      thenByBreathsPerRound() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'breathsPerRound', Sort.asc);
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterSortBy>
      thenByBreathsPerRoundDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'breathsPerRound', Sort.desc);
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterSortBy> thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterSortBy>
      thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterSortBy> thenByEnergy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'energy', Sort.asc);
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterSortBy>
      thenByEnergyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'energy', Sort.desc);
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterSortBy> thenByMood() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mood', Sort.asc);
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterSortBy>
      thenByMoodDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mood', Sort.desc);
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterSortBy> thenByRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rating', Sort.asc);
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterSortBy>
      thenByRatingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rating', Sort.desc);
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterSortBy> thenByRounds() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rounds', Sort.asc);
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterSortBy>
      thenByRoundsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rounds', Sort.desc);
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterSortBy> thenByStress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stress', Sort.asc);
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterSortBy>
      thenByStressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stress', Sort.desc);
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QAfterSortBy>
      thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }
}

extension BreathworkModelQueryWhereDistinct
    on QueryBuilder<BreathworkModel, BreathworkModel, QDistinct> {
  QueryBuilder<BreathworkModel, BreathworkModel, QDistinct>
      distinctByBreathsPerRound() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'breathsPerRound');
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QDistinct> distinctByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'date');
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QDistinct> distinctByEnergy() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'energy');
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QDistinct>
      distinctByHoldSecondsPerRound() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'holdSecondsPerRound');
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QDistinct> distinctByMood() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mood');
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QDistinct> distinctByRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rating');
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QDistinct> distinctByRounds() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rounds');
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QDistinct> distinctByStress() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stress');
    });
  }

  QueryBuilder<BreathworkModel, BreathworkModel, QDistinct> distinctByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type');
    });
  }
}

extension BreathworkModelQueryProperty
    on QueryBuilder<BreathworkModel, BreathworkModel, QQueryProperty> {
  QueryBuilder<BreathworkModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<BreathworkModel, int, QQueryOperations>
      breathsPerRoundProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'breathsPerRound');
    });
  }

  QueryBuilder<BreathworkModel, DateTime, QQueryOperations> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'date');
    });
  }

  QueryBuilder<BreathworkModel, int, QQueryOperations> energyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'energy');
    });
  }

  QueryBuilder<BreathworkModel, List<int>?, QQueryOperations>
      holdSecondsPerRoundProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'holdSecondsPerRound');
    });
  }

  QueryBuilder<BreathworkModel, int, QQueryOperations> moodProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mood');
    });
  }

  QueryBuilder<BreathworkModel, double?, QQueryOperations> ratingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rating');
    });
  }

  QueryBuilder<BreathworkModel, int, QQueryOperations> roundsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rounds');
    });
  }

  QueryBuilder<BreathworkModel, int, QQueryOperations> stressProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stress');
    });
  }

  QueryBuilder<BreathworkModel, BreathworkType, QQueryOperations>
      typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }
}
