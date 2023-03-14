// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meditation.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MeditationCWProxy {
  Meditation date(DateTime date);

  Meditation stress(int stress);

  Meditation mood(int mood);

  Meditation energy(int energy);

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

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMeditation.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMeditation.copyWith.fieldName(...)`
class _$MeditationCWProxyImpl implements _$MeditationCWProxy {
  const _$MeditationCWProxyImpl(this._value);

  final Meditation _value;

  @override
  Meditation date(DateTime date) => this(date: date);

  @override
  Meditation stress(int stress) => this(stress: stress);

  @override
  Meditation mood(int mood) => this(mood: mood);

  @override
  Meditation energy(int energy) => this(energy: energy);

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
    Object? date = const $CopyWithPlaceholder(),
    Object? stress = const $CopyWithPlaceholder(),
    Object? mood = const $CopyWithPlaceholder(),
    Object? energy = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
    Object? goal = const $CopyWithPlaceholder(),
    Object? rating = const $CopyWithPlaceholder(),
    Object? elapsed = const $CopyWithPlaceholder(),
  }) {
    return Meditation(
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

extension $MeditationCopyWith on Meditation {
  /// Returns a callable class that can be used as follows: `instanceOfMeditation.copyWith(...)` or like so:`instanceOfMeditation.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MeditationCWProxy get copyWith => _$MeditationCWProxyImpl(this);
}

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetMeditationCollection on Isar {
  IsarCollection<Meditation> get meditations => this.collection();
}

const MeditationSchema = CollectionSchema(
  name: r'Meditation',
  id: -4241823163203330657,
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
      enumMap: _MeditationtypeEnumValueMap,
    )
  },
  estimateSize: _meditationEstimateSize,
  serialize: _meditationSerialize,
  deserialize: _meditationDeserialize,
  deserializeProp: _meditationDeserializeProp,
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
  getId: _meditationGetId,
  getLinks: _meditationGetLinks,
  attach: _meditationAttach,
  version: '3.0.5',
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
  writer.writeDateTime(offsets[0], object.date);
  writer.writeLong(offsets[1], object.elapsed);
  writer.writeLong(offsets[2], object.energy);
  writer.writeLong(offsets[3], object.goal);
  writer.writeLong(offsets[4], object.mood);
  writer.writeDouble(offsets[5], object.rating);
  writer.writeLong(offsets[6], object.stress);
  writer.writeByte(offsets[7], object.type.index);
}

Meditation _meditationDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Meditation(
    date: reader.readDateTime(offsets[0]),
    elapsed: reader.readLongOrNull(offsets[1]) ?? 0,
    energy: reader.readLongOrNull(offsets[2]) ?? 0,
    goal: reader.readLongOrNull(offsets[3]),
    mood: reader.readLongOrNull(offsets[4]) ?? 0,
    rating: reader.readDoubleOrNull(offsets[5]),
    stress: reader.readLongOrNull(offsets[6]) ?? 0,
    type: _MeditationtypeValueEnumMap[reader.readByteOrNull(offsets[7])] ??
        MeditationType.timed,
  );
  object.id = id;
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

Id _meditationGetId(Meditation object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _meditationGetLinks(Meditation object) {
  return [];
}

void _meditationAttach(IsarCollection<dynamic> col, Id id, Meditation object) {
  object.id = id;
}

extension MeditationQueryWhereSort
    on QueryBuilder<Meditation, Meditation, QWhere> {
  QueryBuilder<Meditation, Meditation, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterWhere> anyDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'date'),
      );
    });
  }
}

extension MeditationQueryWhere
    on QueryBuilder<Meditation, Meditation, QWhereClause> {
  QueryBuilder<Meditation, Meditation, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Meditation, Meditation, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterWhereClause> idBetween(
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

  QueryBuilder<Meditation, Meditation, QAfterWhereClause> dateEqualTo(
      DateTime date) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'date',
        value: [date],
      ));
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterWhereClause> dateNotEqualTo(
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

  QueryBuilder<Meditation, Meditation, QAfterWhereClause> dateGreaterThan(
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

  QueryBuilder<Meditation, Meditation, QAfterWhereClause> dateLessThan(
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

  QueryBuilder<Meditation, Meditation, QAfterWhereClause> dateBetween(
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

extension MeditationQueryFilter
    on QueryBuilder<Meditation, Meditation, QFilterCondition> {
  QueryBuilder<Meditation, Meditation, QAfterFilterCondition> dateEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterFilterCondition> dateGreaterThan(
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

  QueryBuilder<Meditation, Meditation, QAfterFilterCondition> dateLessThan(
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

  QueryBuilder<Meditation, Meditation, QAfterFilterCondition> dateBetween(
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

  QueryBuilder<Meditation, Meditation, QAfterFilterCondition> energyEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'energy',
        value: value,
      ));
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterFilterCondition> energyGreaterThan(
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

  QueryBuilder<Meditation, Meditation, QAfterFilterCondition> energyLessThan(
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

  QueryBuilder<Meditation, Meditation, QAfterFilterCondition> energyBetween(
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

  QueryBuilder<Meditation, Meditation, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Meditation, Meditation, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Meditation, Meditation, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Meditation, Meditation, QAfterFilterCondition> moodEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mood',
        value: value,
      ));
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterFilterCondition> moodGreaterThan(
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

  QueryBuilder<Meditation, Meditation, QAfterFilterCondition> moodLessThan(
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

  QueryBuilder<Meditation, Meditation, QAfterFilterCondition> moodBetween(
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

  QueryBuilder<Meditation, Meditation, QAfterFilterCondition> stressEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stress',
        value: value,
      ));
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterFilterCondition> stressGreaterThan(
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

  QueryBuilder<Meditation, Meditation, QAfterFilterCondition> stressLessThan(
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

  QueryBuilder<Meditation, Meditation, QAfterFilterCondition> stressBetween(
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

extension MeditationQueryLinks
    on QueryBuilder<Meditation, Meditation, QFilterCondition> {}

extension MeditationQuerySortBy
    on QueryBuilder<Meditation, Meditation, QSortBy> {
  QueryBuilder<Meditation, Meditation, QAfterSortBy> sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterSortBy> sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterSortBy> sortByElapsed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'elapsed', Sort.asc);
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterSortBy> sortByElapsedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'elapsed', Sort.desc);
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterSortBy> sortByEnergy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'energy', Sort.asc);
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterSortBy> sortByEnergyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'energy', Sort.desc);
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterSortBy> sortByGoal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'goal', Sort.asc);
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterSortBy> sortByGoalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'goal', Sort.desc);
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterSortBy> sortByMood() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mood', Sort.asc);
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterSortBy> sortByMoodDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mood', Sort.desc);
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterSortBy> sortByRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rating', Sort.asc);
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterSortBy> sortByRatingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rating', Sort.desc);
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterSortBy> sortByStress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stress', Sort.asc);
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterSortBy> sortByStressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stress', Sort.desc);
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterSortBy> sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }
}

extension MeditationQuerySortThenBy
    on QueryBuilder<Meditation, Meditation, QSortThenBy> {
  QueryBuilder<Meditation, Meditation, QAfterSortBy> thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterSortBy> thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterSortBy> thenByElapsed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'elapsed', Sort.asc);
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterSortBy> thenByElapsedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'elapsed', Sort.desc);
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterSortBy> thenByEnergy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'energy', Sort.asc);
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterSortBy> thenByEnergyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'energy', Sort.desc);
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterSortBy> thenByGoal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'goal', Sort.asc);
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterSortBy> thenByGoalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'goal', Sort.desc);
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterSortBy> thenByMood() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mood', Sort.asc);
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterSortBy> thenByMoodDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mood', Sort.desc);
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterSortBy> thenByRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rating', Sort.asc);
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterSortBy> thenByRatingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rating', Sort.desc);
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterSortBy> thenByStress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stress', Sort.asc);
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterSortBy> thenByStressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stress', Sort.desc);
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<Meditation, Meditation, QAfterSortBy> thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }
}

extension MeditationQueryWhereDistinct
    on QueryBuilder<Meditation, Meditation, QDistinct> {
  QueryBuilder<Meditation, Meditation, QDistinct> distinctByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'date');
    });
  }

  QueryBuilder<Meditation, Meditation, QDistinct> distinctByElapsed() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'elapsed');
    });
  }

  QueryBuilder<Meditation, Meditation, QDistinct> distinctByEnergy() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'energy');
    });
  }

  QueryBuilder<Meditation, Meditation, QDistinct> distinctByGoal() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'goal');
    });
  }

  QueryBuilder<Meditation, Meditation, QDistinct> distinctByMood() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mood');
    });
  }

  QueryBuilder<Meditation, Meditation, QDistinct> distinctByRating() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rating');
    });
  }

  QueryBuilder<Meditation, Meditation, QDistinct> distinctByStress() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stress');
    });
  }

  QueryBuilder<Meditation, Meditation, QDistinct> distinctByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type');
    });
  }
}

extension MeditationQueryProperty
    on QueryBuilder<Meditation, Meditation, QQueryProperty> {
  QueryBuilder<Meditation, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Meditation, DateTime, QQueryOperations> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'date');
    });
  }

  QueryBuilder<Meditation, int, QQueryOperations> elapsedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'elapsed');
    });
  }

  QueryBuilder<Meditation, int, QQueryOperations> energyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'energy');
    });
  }

  QueryBuilder<Meditation, int?, QQueryOperations> goalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'goal');
    });
  }

  QueryBuilder<Meditation, int, QQueryOperations> moodProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mood');
    });
  }

  QueryBuilder<Meditation, double?, QQueryOperations> ratingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rating');
    });
  }

  QueryBuilder<Meditation, int, QQueryOperations> stressProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stress');
    });
  }

  QueryBuilder<Meditation, MeditationType, QQueryOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }
}
