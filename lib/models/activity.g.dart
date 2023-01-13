// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ActivityCWProxy {
  Activity date(DateTime date);

  Activity meditation(Meditation? meditation);

  Activity breathwork(Breathwork? breathwork);

  Activity journalEntry(JournalEntry? journalEntry);

  Activity tag(Tag? tag);

  Activity sun(Sun? sun);

  Activity water(Water? water);

  Activity grounding(Grounding? grounding);

  Activity supplement(Supplement? supplement);

  Activity workout(Workout? workout);

  Activity food(Food? food);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Activity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Activity(...).copyWith(id: 12, name: "My name")
  /// ````
  Activity call({
    DateTime? date,
    Meditation? meditation,
    Breathwork? breathwork,
    JournalEntry? journalEntry,
    Tag? tag,
    Sun? sun,
    Water? water,
    Grounding? grounding,
    Supplement? supplement,
    Workout? workout,
    Food? food,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfActivity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfActivity.copyWith.fieldName(...)`
class _$ActivityCWProxyImpl implements _$ActivityCWProxy {
  const _$ActivityCWProxyImpl(this._value);

  final Activity _value;

  @override
  Activity date(DateTime date) => this(date: date);

  @override
  Activity meditation(Meditation? meditation) => this(meditation: meditation);

  @override
  Activity breathwork(Breathwork? breathwork) => this(breathwork: breathwork);

  @override
  Activity journalEntry(JournalEntry? journalEntry) =>
      this(journalEntry: journalEntry);

  @override
  Activity tag(Tag? tag) => this(tag: tag);

  @override
  Activity sun(Sun? sun) => this(sun: sun);

  @override
  Activity water(Water? water) => this(water: water);

  @override
  Activity grounding(Grounding? grounding) => this(grounding: grounding);

  @override
  Activity supplement(Supplement? supplement) => this(supplement: supplement);

  @override
  Activity workout(Workout? workout) => this(workout: workout);

  @override
  Activity food(Food? food) => this(food: food);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Activity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Activity(...).copyWith(id: 12, name: "My name")
  /// ````
  Activity call({
    Object? date = const $CopyWithPlaceholder(),
    Object? meditation = const $CopyWithPlaceholder(),
    Object? breathwork = const $CopyWithPlaceholder(),
    Object? journalEntry = const $CopyWithPlaceholder(),
    Object? tag = const $CopyWithPlaceholder(),
    Object? sun = const $CopyWithPlaceholder(),
    Object? water = const $CopyWithPlaceholder(),
    Object? grounding = const $CopyWithPlaceholder(),
    Object? supplement = const $CopyWithPlaceholder(),
    Object? workout = const $CopyWithPlaceholder(),
    Object? food = const $CopyWithPlaceholder(),
  }) {
    return Activity(
      date: date == const $CopyWithPlaceholder() || date == null
          // ignore: unnecessary_non_null_assertion
          ? _value.date!
          // ignore: cast_nullable_to_non_nullable
          : date as DateTime,
      meditation: meditation == const $CopyWithPlaceholder()
          ? _value.meditation
          // ignore: cast_nullable_to_non_nullable
          : meditation as Meditation?,
      breathwork: breathwork == const $CopyWithPlaceholder()
          ? _value.breathwork
          // ignore: cast_nullable_to_non_nullable
          : breathwork as Breathwork?,
      journalEntry: journalEntry == const $CopyWithPlaceholder()
          ? _value.journalEntry
          // ignore: cast_nullable_to_non_nullable
          : journalEntry as JournalEntry?,
      tag: tag == const $CopyWithPlaceholder()
          ? _value.tag
          // ignore: cast_nullable_to_non_nullable
          : tag as Tag?,
      sun: sun == const $CopyWithPlaceholder()
          ? _value.sun
          // ignore: cast_nullable_to_non_nullable
          : sun as Sun?,
      water: water == const $CopyWithPlaceholder()
          ? _value.water
          // ignore: cast_nullable_to_non_nullable
          : water as Water?,
      grounding: grounding == const $CopyWithPlaceholder()
          ? _value.grounding
          // ignore: cast_nullable_to_non_nullable
          : grounding as Grounding?,
      supplement: supplement == const $CopyWithPlaceholder()
          ? _value.supplement
          // ignore: cast_nullable_to_non_nullable
          : supplement as Supplement?,
      workout: workout == const $CopyWithPlaceholder()
          ? _value.workout
          // ignore: cast_nullable_to_non_nullable
          : workout as Workout?,
      food: food == const $CopyWithPlaceholder()
          ? _value.food
          // ignore: cast_nullable_to_non_nullable
          : food as Food?,
    );
  }
}

extension $ActivityCopyWith on Activity {
  /// Returns a callable class that can be used as follows: `instanceOfActivity.copyWith(...)` or like so:`instanceOfActivity.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ActivityCWProxy get copyWith => _$ActivityCWProxyImpl(this);
}

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetActivityCollection on Isar {
  IsarCollection<Activity> get activitys => this.collection();
}

const ActivitySchema = CollectionSchema(
  name: r'Activity',
  id: -6099828696840999229,
  properties: {
    r'breathwork': PropertySchema(
      id: 0,
      name: r'breathwork',
      type: IsarType.object,
      target: r'Breathwork',
    ),
    r'date': PropertySchema(
      id: 1,
      name: r'date',
      type: IsarType.dateTime,
    ),
    r'food': PropertySchema(
      id: 2,
      name: r'food',
      type: IsarType.object,
      target: r'Food',
    ),
    r'grounding': PropertySchema(
      id: 3,
      name: r'grounding',
      type: IsarType.object,
      target: r'Grounding',
    ),
    r'journalEntry': PropertySchema(
      id: 4,
      name: r'journalEntry',
      type: IsarType.object,
      target: r'JournalEntry',
    ),
    r'meditation': PropertySchema(
      id: 5,
      name: r'meditation',
      type: IsarType.object,
      target: r'Meditation',
    ),
    r'sun': PropertySchema(
      id: 6,
      name: r'sun',
      type: IsarType.object,
      target: r'Sun',
    ),
    r'supplement': PropertySchema(
      id: 7,
      name: r'supplement',
      type: IsarType.object,
      target: r'Supplement',
    ),
    r'tag': PropertySchema(
      id: 8,
      name: r'tag',
      type: IsarType.object,
      target: r'Tag',
    ),
    r'water': PropertySchema(
      id: 9,
      name: r'water',
      type: IsarType.object,
      target: r'Water',
    ),
    r'workout': PropertySchema(
      id: 10,
      name: r'workout',
      type: IsarType.object,
      target: r'Workout',
    )
  },
  estimateSize: _activityEstimateSize,
  serialize: _activitySerialize,
  deserialize: _activityDeserialize,
  deserializeProp: _activityDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'Meditation': MeditationSchema,
    r'Breathwork': BreathworkSchema,
    r'JournalEntry': JournalEntrySchema,
    r'Tag': TagSchema,
    r'Sun': SunSchema,
    r'Water': WaterSchema,
    r'Grounding': GroundingSchema,
    r'Supplement': SupplementSchema,
    r'Workout': WorkoutSchema,
    r'Food': FoodSchema
  },
  getId: _activityGetId,
  getLinks: _activityGetLinks,
  attach: _activityAttach,
  version: '3.0.5',
);

int _activityEstimateSize(
  Activity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.breathwork;
    if (value != null) {
      bytesCount += 3 +
          BreathworkSchema.estimateSize(
              value, allOffsets[Breathwork]!, allOffsets);
    }
  }
  {
    final value = object.food;
    if (value != null) {
      bytesCount +=
          3 + FoodSchema.estimateSize(value, allOffsets[Food]!, allOffsets);
    }
  }
  {
    final value = object.grounding;
    if (value != null) {
      bytesCount += 3 +
          GroundingSchema.estimateSize(
              value, allOffsets[Grounding]!, allOffsets);
    }
  }
  {
    final value = object.journalEntry;
    if (value != null) {
      bytesCount += 3 +
          JournalEntrySchema.estimateSize(
              value, allOffsets[JournalEntry]!, allOffsets);
    }
  }
  {
    final value = object.meditation;
    if (value != null) {
      bytesCount += 3 +
          MeditationSchema.estimateSize(
              value, allOffsets[Meditation]!, allOffsets);
    }
  }
  {
    final value = object.sun;
    if (value != null) {
      bytesCount +=
          3 + SunSchema.estimateSize(value, allOffsets[Sun]!, allOffsets);
    }
  }
  {
    final value = object.supplement;
    if (value != null) {
      bytesCount += 3 +
          SupplementSchema.estimateSize(
              value, allOffsets[Supplement]!, allOffsets);
    }
  }
  {
    final value = object.tag;
    if (value != null) {
      bytesCount +=
          3 + TagSchema.estimateSize(value, allOffsets[Tag]!, allOffsets);
    }
  }
  {
    final value = object.water;
    if (value != null) {
      bytesCount +=
          3 + WaterSchema.estimateSize(value, allOffsets[Water]!, allOffsets);
    }
  }
  {
    final value = object.workout;
    if (value != null) {
      bytesCount += 3 +
          WorkoutSchema.estimateSize(value, allOffsets[Workout]!, allOffsets);
    }
  }
  return bytesCount;
}

void _activitySerialize(
  Activity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<Breathwork>(
    offsets[0],
    allOffsets,
    BreathworkSchema.serialize,
    object.breathwork,
  );
  writer.writeDateTime(offsets[1], object.date);
  writer.writeObject<Food>(
    offsets[2],
    allOffsets,
    FoodSchema.serialize,
    object.food,
  );
  writer.writeObject<Grounding>(
    offsets[3],
    allOffsets,
    GroundingSchema.serialize,
    object.grounding,
  );
  writer.writeObject<JournalEntry>(
    offsets[4],
    allOffsets,
    JournalEntrySchema.serialize,
    object.journalEntry,
  );
  writer.writeObject<Meditation>(
    offsets[5],
    allOffsets,
    MeditationSchema.serialize,
    object.meditation,
  );
  writer.writeObject<Sun>(
    offsets[6],
    allOffsets,
    SunSchema.serialize,
    object.sun,
  );
  writer.writeObject<Supplement>(
    offsets[7],
    allOffsets,
    SupplementSchema.serialize,
    object.supplement,
  );
  writer.writeObject<Tag>(
    offsets[8],
    allOffsets,
    TagSchema.serialize,
    object.tag,
  );
  writer.writeObject<Water>(
    offsets[9],
    allOffsets,
    WaterSchema.serialize,
    object.water,
  );
  writer.writeObject<Workout>(
    offsets[10],
    allOffsets,
    WorkoutSchema.serialize,
    object.workout,
  );
}

Activity _activityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Activity(
    breathwork: reader.readObjectOrNull<Breathwork>(
      offsets[0],
      BreathworkSchema.deserialize,
      allOffsets,
    ),
    date: reader.readDateTime(offsets[1]),
    food: reader.readObjectOrNull<Food>(
      offsets[2],
      FoodSchema.deserialize,
      allOffsets,
    ),
    grounding: reader.readObjectOrNull<Grounding>(
      offsets[3],
      GroundingSchema.deserialize,
      allOffsets,
    ),
    journalEntry: reader.readObjectOrNull<JournalEntry>(
      offsets[4],
      JournalEntrySchema.deserialize,
      allOffsets,
    ),
    meditation: reader.readObjectOrNull<Meditation>(
      offsets[5],
      MeditationSchema.deserialize,
      allOffsets,
    ),
    sun: reader.readObjectOrNull<Sun>(
      offsets[6],
      SunSchema.deserialize,
      allOffsets,
    ),
    supplement: reader.readObjectOrNull<Supplement>(
      offsets[7],
      SupplementSchema.deserialize,
      allOffsets,
    ),
    tag: reader.readObjectOrNull<Tag>(
      offsets[8],
      TagSchema.deserialize,
      allOffsets,
    ),
    water: reader.readObjectOrNull<Water>(
      offsets[9],
      WaterSchema.deserialize,
      allOffsets,
    ),
    workout: reader.readObjectOrNull<Workout>(
      offsets[10],
      WorkoutSchema.deserialize,
      allOffsets,
    ),
  );
  object.id = id;
  return object;
}

P _activityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<Breathwork>(
        offset,
        BreathworkSchema.deserialize,
        allOffsets,
      )) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readObjectOrNull<Food>(
        offset,
        FoodSchema.deserialize,
        allOffsets,
      )) as P;
    case 3:
      return (reader.readObjectOrNull<Grounding>(
        offset,
        GroundingSchema.deserialize,
        allOffsets,
      )) as P;
    case 4:
      return (reader.readObjectOrNull<JournalEntry>(
        offset,
        JournalEntrySchema.deserialize,
        allOffsets,
      )) as P;
    case 5:
      return (reader.readObjectOrNull<Meditation>(
        offset,
        MeditationSchema.deserialize,
        allOffsets,
      )) as P;
    case 6:
      return (reader.readObjectOrNull<Sun>(
        offset,
        SunSchema.deserialize,
        allOffsets,
      )) as P;
    case 7:
      return (reader.readObjectOrNull<Supplement>(
        offset,
        SupplementSchema.deserialize,
        allOffsets,
      )) as P;
    case 8:
      return (reader.readObjectOrNull<Tag>(
        offset,
        TagSchema.deserialize,
        allOffsets,
      )) as P;
    case 9:
      return (reader.readObjectOrNull<Water>(
        offset,
        WaterSchema.deserialize,
        allOffsets,
      )) as P;
    case 10:
      return (reader.readObjectOrNull<Workout>(
        offset,
        WorkoutSchema.deserialize,
        allOffsets,
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _activityGetId(Activity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _activityGetLinks(Activity object) {
  return [];
}

void _activityAttach(IsarCollection<dynamic> col, Id id, Activity object) {
  object.id = id;
}

extension ActivityQueryWhereSort on QueryBuilder<Activity, Activity, QWhere> {
  QueryBuilder<Activity, Activity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ActivityQueryWhere on QueryBuilder<Activity, Activity, QWhereClause> {
  QueryBuilder<Activity, Activity, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Activity, Activity, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Activity, Activity, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Activity, Activity, QAfterWhereClause> idBetween(
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
}

extension ActivityQueryFilter
    on QueryBuilder<Activity, Activity, QFilterCondition> {
  QueryBuilder<Activity, Activity, QAfterFilterCondition> breathworkIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'breathwork',
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition>
      breathworkIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'breathwork',
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> dateEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> dateGreaterThan(
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

  QueryBuilder<Activity, Activity, QAfterFilterCondition> dateLessThan(
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

  QueryBuilder<Activity, Activity, QAfterFilterCondition> dateBetween(
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

  QueryBuilder<Activity, Activity, QAfterFilterCondition> foodIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'food',
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> foodIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'food',
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> groundingIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'grounding',
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> groundingIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'grounding',
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Activity, Activity, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Activity, Activity, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Activity, Activity, QAfterFilterCondition> journalEntryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'journalEntry',
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition>
      journalEntryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'journalEntry',
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> meditationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'meditation',
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition>
      meditationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'meditation',
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> sunIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sun',
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> sunIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sun',
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> supplementIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'supplement',
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition>
      supplementIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'supplement',
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> tagIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tag',
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> tagIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tag',
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> waterIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'water',
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> waterIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'water',
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> workoutIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'workout',
      ));
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> workoutIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'workout',
      ));
    });
  }
}

extension ActivityQueryObject
    on QueryBuilder<Activity, Activity, QFilterCondition> {
  QueryBuilder<Activity, Activity, QAfterFilterCondition> breathwork(
      FilterQuery<Breathwork> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'breathwork');
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> food(
      FilterQuery<Food> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'food');
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> grounding(
      FilterQuery<Grounding> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'grounding');
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> journalEntry(
      FilterQuery<JournalEntry> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'journalEntry');
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> meditation(
      FilterQuery<Meditation> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'meditation');
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> sun(
      FilterQuery<Sun> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'sun');
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> supplement(
      FilterQuery<Supplement> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'supplement');
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> tag(
      FilterQuery<Tag> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'tag');
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> water(
      FilterQuery<Water> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'water');
    });
  }

  QueryBuilder<Activity, Activity, QAfterFilterCondition> workout(
      FilterQuery<Workout> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'workout');
    });
  }
}

extension ActivityQueryLinks
    on QueryBuilder<Activity, Activity, QFilterCondition> {}

extension ActivityQuerySortBy on QueryBuilder<Activity, Activity, QSortBy> {
  QueryBuilder<Activity, Activity, QAfterSortBy> sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<Activity, Activity, QAfterSortBy> sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }
}

extension ActivityQuerySortThenBy
    on QueryBuilder<Activity, Activity, QSortThenBy> {
  QueryBuilder<Activity, Activity, QAfterSortBy> thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<Activity, Activity, QAfterSortBy> thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<Activity, Activity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Activity, Activity, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension ActivityQueryWhereDistinct
    on QueryBuilder<Activity, Activity, QDistinct> {
  QueryBuilder<Activity, Activity, QDistinct> distinctByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'date');
    });
  }
}

extension ActivityQueryProperty
    on QueryBuilder<Activity, Activity, QQueryProperty> {
  QueryBuilder<Activity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Activity, Breathwork?, QQueryOperations> breathworkProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'breathwork');
    });
  }

  QueryBuilder<Activity, DateTime, QQueryOperations> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'date');
    });
  }

  QueryBuilder<Activity, Food?, QQueryOperations> foodProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'food');
    });
  }

  QueryBuilder<Activity, Grounding?, QQueryOperations> groundingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'grounding');
    });
  }

  QueryBuilder<Activity, JournalEntry?, QQueryOperations>
      journalEntryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'journalEntry');
    });
  }

  QueryBuilder<Activity, Meditation?, QQueryOperations> meditationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'meditation');
    });
  }

  QueryBuilder<Activity, Sun?, QQueryOperations> sunProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sun');
    });
  }

  QueryBuilder<Activity, Supplement?, QQueryOperations> supplementProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'supplement');
    });
  }

  QueryBuilder<Activity, Tag?, QQueryOperations> tagProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tag');
    });
  }

  QueryBuilder<Activity, Water?, QQueryOperations> waterProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'water');
    });
  }

  QueryBuilder<Activity, Workout?, QQueryOperations> workoutProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'workout');
    });
  }
}
