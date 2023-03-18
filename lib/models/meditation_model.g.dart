// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meditation_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MeditationModelCWProxy {
  MeditationModel date(DateTime date);

  MeditationModel stress(int stress);

  MeditationModel mood(int mood);

  MeditationModel energy(int energy);

  MeditationModel type(MeditationType type);

  MeditationModel goal(int? goal);

  MeditationModel rating(double? rating);

  MeditationModel elapsed(int elapsed);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MeditationModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MeditationModel(...).copyWith(id: 12, name: "My name")
  /// ````
  MeditationModel call({
    DateTime? date,
    int? stress,
    int? mood,
    int? energy,
    MeditationType? type,
    int? goal,
    double? rating,
    int? elapsed,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMeditationModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMeditationModel.copyWith.fieldName(...)`
class _$MeditationModelCWProxyImpl implements _$MeditationModelCWProxy {
  const _$MeditationModelCWProxyImpl(this._value);

  final MeditationModel _value;

  @override
  MeditationModel date(DateTime date) => this(date: date);

  @override
  MeditationModel stress(int stress) => this(stress: stress);

  @override
  MeditationModel mood(int mood) => this(mood: mood);

  @override
  MeditationModel energy(int energy) => this(energy: energy);

  @override
  MeditationModel type(MeditationType type) => this(type: type);

  @override
  MeditationModel goal(int? goal) => this(goal: goal);

  @override
  MeditationModel rating(double? rating) => this(rating: rating);

  @override
  MeditationModel elapsed(int elapsed) => this(elapsed: elapsed);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MeditationModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MeditationModel(...).copyWith(id: 12, name: "My name")
  /// ````
  MeditationModel call({
    Object? date = const $CopyWithPlaceholder(),
    Object? stress = const $CopyWithPlaceholder(),
    Object? mood = const $CopyWithPlaceholder(),
    Object? energy = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
    Object? goal = const $CopyWithPlaceholder(),
    Object? rating = const $CopyWithPlaceholder(),
    Object? elapsed = const $CopyWithPlaceholder(),
  }) {
    return MeditationModel(
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
          ? _value.elapsed
          // ignore: cast_nullable_to_non_nullable
          : elapsed as int,
    );
  }
}

extension $MeditationModelCopyWith on MeditationModel {
  /// Returns a callable class that can be used as follows: `instanceOfMeditationModel.copyWith(...)` or like so:`instanceOfMeditationModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MeditationModelCWProxy get copyWith => _$MeditationModelCWProxyImpl(this);
}

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetMeditationModelCollection on Isar {
  IsarCollection<MeditationModel> get meditationModels => this.collection();
}

const MeditationModelSchema = CollectionSchema(
  name: r'MeditationModel',
  id: -8804796857989463151,
  properties: {
    r'date': PropertySchema(
      id: 0,
      name: r'date',
      type: IsarType.dateTime,
    ),
    r'elapsed': PropertySchema(
      id: 1,
      name: r'elapsed',
      type: IsarType.long,
    ),
    r'energy': PropertySchema(
      id: 2,
      name: r'energy',
      type: IsarType.long,
    ),
    r'goal': PropertySchema(
      id: 3,
      name: r'goal',
      type: IsarType.long,
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
    r'stress': PropertySchema(
      id: 6,
      name: r'stress',
      type: IsarType.long,
    ),
    r'type': PropertySchema(
      id: 7,
      name: r'type',
      type: IsarType.byte,
      enumMap: _MeditationModeltypeEnumValueMap,
    )
  },
  estimateSize: _meditationModelEstimateSize,
  serialize: _meditationModelSerialize,
  deserialize: _meditationModelDeserialize,
  deserializeProp: _meditationModelDeserializeProp,
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
  getId: _meditationModelGetId,
  getLinks: _meditationModelGetLinks,
  attach: _meditationModelAttach,
  version: '3.0.5',
);

int _meditationModelEstimateSize(
  MeditationModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _meditationModelSerialize(
  MeditationModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.date);
  writer.writeLong(offsets[1], object.elapsed);
  writer.writeLong(offsets[2], object.energy);
  writer.writeLong(offsets[3], object.goal);
  writer.writeLong(offsets[4], object.mood);
  writer.writeDouble(offsets[5], object.rating);
  writer.writeLong(offsets[6], object.stress);
  writer.writeByte(offsets[7], object.type.index);
}

MeditationModel _meditationModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MeditationModel(
    date: reader.readDateTime(offsets[0]),
    elapsed: reader.readLongOrNull(offsets[1]) ?? 0,
    energy: reader.readLongOrNull(offsets[2]) ?? 0,
    goal: reader.readLongOrNull(offsets[3]),
    mood: reader.readLongOrNull(offsets[4]) ?? 0,
    rating: reader.readDoubleOrNull(offsets[5]),
    stress: reader.readLongOrNull(offsets[6]) ?? 0,
    type: _MeditationModeltypeValueEnumMap[reader.readByteOrNull(offsets[7])] ??
        MeditationType.timed,
  );
  object.id = id;
  return object;
}

P _meditationModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 2:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 5:
      return (reader.readDoubleOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset) ?? 0) as P;
    case 7:
      return (_MeditationModeltypeValueEnumMap[reader.readByteOrNull(offset)] ??
          MeditationType.timed) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _MeditationModeltypeEnumValueMap = {
  'openEnded': 0,
  'timed': 1,
};
const _MeditationModeltypeValueEnumMap = {
  0: MeditationType.openEnded,
  1: MeditationType.timed,
};

Id _meditationModelGetId(MeditationModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _meditationModelGetLinks(MeditationModel object) {
  return [];
}

void _meditationModelAttach(
    IsarCollection<dynamic> col, Id id, MeditationModel object) {
  object.id = id;
}

extension MeditationModelQueryWhereSort
    on QueryBuilder<MeditationModel, MeditationModel, QWhere> {
  QueryBuilder<MeditationModel, MeditationModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterWhere> anyDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'date'),
      );
    });
  }
}

extension MeditationModelQueryWhere
    on QueryBuilder<MeditationModel, MeditationModel, QWhereClause> {
  QueryBuilder<MeditationModel, MeditationModel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterWhereClause>
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

  QueryBuilder<MeditationModel, MeditationModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterWhereClause> idBetween(
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

  QueryBuilder<MeditationModel, MeditationModel, QAfterWhereClause> dateEqualTo(
      DateTime date) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'date',
        value: [date],
      ));
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterWhereClause>
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

  QueryBuilder<MeditationModel, MeditationModel, QAfterWhereClause>
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

  QueryBuilder<MeditationModel, MeditationModel, QAfterWhereClause>
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

  QueryBuilder<MeditationModel, MeditationModel, QAfterWhereClause> dateBetween(
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

extension MeditationModelQueryFilter
    on QueryBuilder<MeditationModel, MeditationModel, QFilterCondition> {
  QueryBuilder<MeditationModel, MeditationModel, QAfterFilterCondition>
      dateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterFilterCondition>
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

  QueryBuilder<MeditationModel, MeditationModel, QAfterFilterCondition>
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

  QueryBuilder<MeditationModel, MeditationModel, QAfterFilterCondition>
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

  QueryBuilder<MeditationModel, MeditationModel, QAfterFilterCondition>
      elapsedEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'elapsed',
        value: value,
      ));
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterFilterCondition>
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

  QueryBuilder<MeditationModel, MeditationModel, QAfterFilterCondition>
      elapsedLessThan(
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

  QueryBuilder<MeditationModel, MeditationModel, QAfterFilterCondition>
      elapsedBetween(
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

  QueryBuilder<MeditationModel, MeditationModel, QAfterFilterCondition>
      energyEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'energy',
        value: value,
      ));
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterFilterCondition>
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

  QueryBuilder<MeditationModel, MeditationModel, QAfterFilterCondition>
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

  QueryBuilder<MeditationModel, MeditationModel, QAfterFilterCondition>
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

  QueryBuilder<MeditationModel, MeditationModel, QAfterFilterCondition>
      goalIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'goal',
      ));
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterFilterCondition>
      goalIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'goal',
      ));
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterFilterCondition>
      goalEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'goal',
        value: value,
      ));
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterFilterCondition>
      goalGreaterThan(
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

  QueryBuilder<MeditationModel, MeditationModel, QAfterFilterCondition>
      goalLessThan(
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

  QueryBuilder<MeditationModel, MeditationModel, QAfterFilterCondition>
      goalBetween(
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

  QueryBuilder<MeditationModel, MeditationModel, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterFilterCondition>
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

  QueryBuilder<MeditationModel, MeditationModel, QAfterFilterCondition>
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

  QueryBuilder<MeditationModel, MeditationModel, QAfterFilterCondition>
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

  QueryBuilder<MeditationModel, MeditationModel, QAfterFilterCondition>
      moodEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mood',
        value: value,
      ));
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterFilterCondition>
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

  QueryBuilder<MeditationModel, MeditationModel, QAfterFilterCondition>
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

  QueryBuilder<MeditationModel, MeditationModel, QAfterFilterCondition>
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

  QueryBuilder<MeditationModel, MeditationModel, QAfterFilterCondition>
      ratingIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rating',
      ));
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterFilterCondition>
      ratingIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rating',
      ));
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterFilterCondition>
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

  QueryBuilder<MeditationModel, MeditationModel, QAfterFilterCondition>
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

  QueryBuilder<MeditationModel, MeditationModel, QAfterFilterCondition>
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

  QueryBuilder<MeditationModel, MeditationModel, QAfterFilterCondition>
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

  QueryBuilder<MeditationModel, MeditationModel, QAfterFilterCondition>
      stressEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stress',
        value: value,
      ));
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterFilterCondition>
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

  QueryBuilder<MeditationModel, MeditationModel, QAfterFilterCondition>
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

  QueryBuilder<MeditationModel, MeditationModel, QAfterFilterCondition>
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

  QueryBuilder<MeditationModel, MeditationModel, QAfterFilterCondition>
      typeEqualTo(MeditationType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterFilterCondition>
      typeGreaterThan(
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

  QueryBuilder<MeditationModel, MeditationModel, QAfterFilterCondition>
      typeLessThan(
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

  QueryBuilder<MeditationModel, MeditationModel, QAfterFilterCondition>
      typeBetween(
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

extension MeditationModelQueryObject
    on QueryBuilder<MeditationModel, MeditationModel, QFilterCondition> {}

extension MeditationModelQueryLinks
    on QueryBuilder<MeditationModel, MeditationModel, QFilterCondition> {}

extension MeditationModelQuerySortBy
    on QueryBuilder<MeditationModel, MeditationModel, QSortBy> {
  QueryBuilder<MeditationModel, MeditationModel, QAfterSortBy> sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterSortBy>
      sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterSortBy> sortByElapsed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'elapsed', Sort.asc);
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterSortBy>
      sortByElapsedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'elapsed', Sort.desc);
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterSortBy> sortByEnergy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'energy', Sort.asc);
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterSortBy>
      sortByEnergyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'energy', Sort.desc);
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterSortBy> sortByGoal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'goal', Sort.asc);
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterSortBy>
      sortByGoalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'goal', Sort.desc);
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterSortBy> sortByMood() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mood', Sort.asc);
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterSortBy>
      sortByMoodDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mood', Sort.desc);
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterSortBy> sortByRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rating', Sort.asc);
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterSortBy>
      sortByRatingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rating', Sort.desc);
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterSortBy> sortByStress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stress', Sort.asc);
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterSortBy>
      sortByStressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stress', Sort.desc);
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterSortBy>
      sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }
}

extension MeditationModelQuerySortThenBy
    on QueryBuilder<MeditationModel, MeditationModel, QSortThenBy> {
  QueryBuilder<MeditationModel, MeditationModel, QAfterSortBy> thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterSortBy>
      thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterSortBy> thenByElapsed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'elapsed', Sort.asc);
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterSortBy>
      thenByElapsedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'elapsed', Sort.desc);
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterSortBy> thenByEnergy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'energy', Sort.asc);
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterSortBy>
      thenByEnergyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'energy', Sort.desc);
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterSortBy> thenByGoal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'goal', Sort.asc);
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterSortBy>
      thenByGoalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'goal', Sort.desc);
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterSortBy> thenByMood() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mood', Sort.asc);
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterSortBy>
      thenByMoodDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mood', Sort.desc);
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterSortBy> thenByRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rating', Sort.asc);
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterSortBy>
      thenByRatingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rating', Sort.desc);
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterSortBy> thenByStress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stress', Sort.asc);
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterSortBy>
      thenByStressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stress', Sort.desc);
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QAfterSortBy>
      thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }
}

extension MeditationModelQueryWhereDistinct
    on QueryBuilder<MeditationModel, MeditationModel, QDistinct> {
  QueryBuilder<MeditationModel, MeditationModel, QDistinct> distinctByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'date');
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QDistinct>
      distinctByElapsed() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'elapsed');
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QDistinct> distinctByEnergy() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'energy');
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QDistinct> distinctByGoal() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'goal');
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QDistinct> distinctByMood() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mood');
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QDistinct> distinctByRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rating');
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QDistinct> distinctByStress() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stress');
    });
  }

  QueryBuilder<MeditationModel, MeditationModel, QDistinct> distinctByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type');
    });
  }
}

extension MeditationModelQueryProperty
    on QueryBuilder<MeditationModel, MeditationModel, QQueryProperty> {
  QueryBuilder<MeditationModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MeditationModel, DateTime, QQueryOperations> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'date');
    });
  }

  QueryBuilder<MeditationModel, int, QQueryOperations> elapsedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'elapsed');
    });
  }

  QueryBuilder<MeditationModel, int, QQueryOperations> energyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'energy');
    });
  }

  QueryBuilder<MeditationModel, int?, QQueryOperations> goalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'goal');
    });
  }

  QueryBuilder<MeditationModel, int, QQueryOperations> moodProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mood');
    });
  }

  QueryBuilder<MeditationModel, double?, QQueryOperations> ratingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rating');
    });
  }

  QueryBuilder<MeditationModel, int, QQueryOperations> stressProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stress');
    });
  }

  QueryBuilder<MeditationModel, MeditationType, QQueryOperations>
      typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }
}
