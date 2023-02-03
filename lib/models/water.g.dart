// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'water.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$WaterCWProxy {
  Water placeholder(int? placeholder);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Water(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Water(...).copyWith(id: 12, name: "My name")
  /// ````
  Water call({
    int? placeholder,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfWater.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfWater.copyWith.fieldName(...)`
class _$WaterCWProxyImpl implements _$WaterCWProxy {
  const _$WaterCWProxyImpl(this._value);

  final Water _value;

  @override
  Water placeholder(int? placeholder) => this(placeholder: placeholder);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Water(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Water(...).copyWith(id: 12, name: "My name")
  /// ````
  Water call({
    Object? placeholder = const $CopyWithPlaceholder(),
  }) {
    return Water(
      placeholder: placeholder == const $CopyWithPlaceholder()
          ? _value.placeholder
          // ignore: cast_nullable_to_non_nullable
          : placeholder as int?,
    );
  }
}

extension $WaterCopyWith on Water {
  /// Returns a callable class that can be used as follows: `instanceOfWater.copyWith(...)` or like so:`instanceOfWater.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$WaterCWProxy get copyWith => _$WaterCWProxyImpl(this);
}

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetWaterCollection on Isar {
  IsarCollection<Water> get waters => this.collection();
}

const WaterSchema = CollectionSchema(
  name: r'Water',
  id: -5929393283822829222,
  properties: {
    r'placeholder': PropertySchema(
      id: 0,
      name: r'placeholder',
      type: IsarType.long,
    )
  },
  estimateSize: _waterEstimateSize,
  serialize: _waterSerialize,
  deserialize: _waterDeserialize,
  deserializeProp: _waterDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _waterGetId,
  getLinks: _waterGetLinks,
  attach: _waterAttach,
  version: '3.0.5',
);

int _waterEstimateSize(
  Water object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _waterSerialize(
  Water object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.placeholder);
}

Water _waterDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Water(
    placeholder: reader.readLongOrNull(offsets[0]),
  );
  object.id = id;
  return object;
}

P _waterDeserializeProp<P>(
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

Id _waterGetId(Water object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _waterGetLinks(Water object) {
  return [];
}

void _waterAttach(IsarCollection<dynamic> col, Id id, Water object) {
  object.id = id;
}

extension WaterQueryWhereSort on QueryBuilder<Water, Water, QWhere> {
  QueryBuilder<Water, Water, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension WaterQueryWhere on QueryBuilder<Water, Water, QWhereClause> {
  QueryBuilder<Water, Water, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Water, Water, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Water, Water, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Water, Water, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Water, Water, QAfterWhereClause> idBetween(
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

extension WaterQueryFilter on QueryBuilder<Water, Water, QFilterCondition> {
  QueryBuilder<Water, Water, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Water, Water, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Water, Water, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Water, Water, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Water, Water, QAfterFilterCondition> placeholderIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'placeholder',
      ));
    });
  }

  QueryBuilder<Water, Water, QAfterFilterCondition> placeholderIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'placeholder',
      ));
    });
  }

  QueryBuilder<Water, Water, QAfterFilterCondition> placeholderEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'placeholder',
        value: value,
      ));
    });
  }

  QueryBuilder<Water, Water, QAfterFilterCondition> placeholderGreaterThan(
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

  QueryBuilder<Water, Water, QAfterFilterCondition> placeholderLessThan(
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

  QueryBuilder<Water, Water, QAfterFilterCondition> placeholderBetween(
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

extension WaterQueryObject on QueryBuilder<Water, Water, QFilterCondition> {}

extension WaterQueryLinks on QueryBuilder<Water, Water, QFilterCondition> {}

extension WaterQuerySortBy on QueryBuilder<Water, Water, QSortBy> {
  QueryBuilder<Water, Water, QAfterSortBy> sortByPlaceholder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placeholder', Sort.asc);
    });
  }

  QueryBuilder<Water, Water, QAfterSortBy> sortByPlaceholderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placeholder', Sort.desc);
    });
  }
}

extension WaterQuerySortThenBy on QueryBuilder<Water, Water, QSortThenBy> {
  QueryBuilder<Water, Water, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Water, Water, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Water, Water, QAfterSortBy> thenByPlaceholder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placeholder', Sort.asc);
    });
  }

  QueryBuilder<Water, Water, QAfterSortBy> thenByPlaceholderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placeholder', Sort.desc);
    });
  }
}

extension WaterQueryWhereDistinct on QueryBuilder<Water, Water, QDistinct> {
  QueryBuilder<Water, Water, QDistinct> distinctByPlaceholder() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'placeholder');
    });
  }
}

extension WaterQueryProperty on QueryBuilder<Water, Water, QQueryProperty> {
  QueryBuilder<Water, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Water, int?, QQueryOperations> placeholderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'placeholder');
    });
  }
}
