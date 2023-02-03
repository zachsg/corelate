// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplement.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SupplementCWProxy {
  Supplement placeholder(int? placeholder);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Supplement(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Supplement(...).copyWith(id: 12, name: "My name")
  /// ````
  Supplement call({
    int? placeholder,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSupplement.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSupplement.copyWith.fieldName(...)`
class _$SupplementCWProxyImpl implements _$SupplementCWProxy {
  const _$SupplementCWProxyImpl(this._value);

  final Supplement _value;

  @override
  Supplement placeholder(int? placeholder) => this(placeholder: placeholder);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Supplement(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Supplement(...).copyWith(id: 12, name: "My name")
  /// ````
  Supplement call({
    Object? placeholder = const $CopyWithPlaceholder(),
  }) {
    return Supplement(
      placeholder: placeholder == const $CopyWithPlaceholder()
          ? _value.placeholder
          // ignore: cast_nullable_to_non_nullable
          : placeholder as int?,
    );
  }
}

extension $SupplementCopyWith on Supplement {
  /// Returns a callable class that can be used as follows: `instanceOfSupplement.copyWith(...)` or like so:`instanceOfSupplement.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SupplementCWProxy get copyWith => _$SupplementCWProxyImpl(this);
}

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetSupplementCollection on Isar {
  IsarCollection<Supplement> get supplements => this.collection();
}

const SupplementSchema = CollectionSchema(
  name: r'Supplement',
  id: -7067661749969174285,
  properties: {
    r'placeholder': PropertySchema(
      id: 0,
      name: r'placeholder',
      type: IsarType.long,
    )
  },
  estimateSize: _supplementEstimateSize,
  serialize: _supplementSerialize,
  deserialize: _supplementDeserialize,
  deserializeProp: _supplementDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _supplementGetId,
  getLinks: _supplementGetLinks,
  attach: _supplementAttach,
  version: '3.0.5',
);

int _supplementEstimateSize(
  Supplement object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _supplementSerialize(
  Supplement object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.placeholder);
}

Supplement _supplementDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Supplement(
    placeholder: reader.readLongOrNull(offsets[0]),
  );
  object.id = id;
  return object;
}

P _supplementDeserializeProp<P>(
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

Id _supplementGetId(Supplement object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _supplementGetLinks(Supplement object) {
  return [];
}

void _supplementAttach(IsarCollection<dynamic> col, Id id, Supplement object) {
  object.id = id;
}

extension SupplementQueryWhereSort
    on QueryBuilder<Supplement, Supplement, QWhere> {
  QueryBuilder<Supplement, Supplement, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SupplementQueryWhere
    on QueryBuilder<Supplement, Supplement, QWhereClause> {
  QueryBuilder<Supplement, Supplement, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Supplement, Supplement, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Supplement, Supplement, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Supplement, Supplement, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Supplement, Supplement, QAfterWhereClause> idBetween(
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

extension SupplementQueryFilter
    on QueryBuilder<Supplement, Supplement, QFilterCondition> {
  QueryBuilder<Supplement, Supplement, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Supplement, Supplement, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Supplement, Supplement, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Supplement, Supplement, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Supplement, Supplement, QAfterFilterCondition>
      placeholderIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'placeholder',
      ));
    });
  }

  QueryBuilder<Supplement, Supplement, QAfterFilterCondition>
      placeholderIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'placeholder',
      ));
    });
  }

  QueryBuilder<Supplement, Supplement, QAfterFilterCondition>
      placeholderEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'placeholder',
        value: value,
      ));
    });
  }

  QueryBuilder<Supplement, Supplement, QAfterFilterCondition>
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

  QueryBuilder<Supplement, Supplement, QAfterFilterCondition>
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

  QueryBuilder<Supplement, Supplement, QAfterFilterCondition>
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

extension SupplementQueryObject
    on QueryBuilder<Supplement, Supplement, QFilterCondition> {}

extension SupplementQueryLinks
    on QueryBuilder<Supplement, Supplement, QFilterCondition> {}

extension SupplementQuerySortBy
    on QueryBuilder<Supplement, Supplement, QSortBy> {
  QueryBuilder<Supplement, Supplement, QAfterSortBy> sortByPlaceholder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placeholder', Sort.asc);
    });
  }

  QueryBuilder<Supplement, Supplement, QAfterSortBy> sortByPlaceholderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placeholder', Sort.desc);
    });
  }
}

extension SupplementQuerySortThenBy
    on QueryBuilder<Supplement, Supplement, QSortThenBy> {
  QueryBuilder<Supplement, Supplement, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Supplement, Supplement, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Supplement, Supplement, QAfterSortBy> thenByPlaceholder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placeholder', Sort.asc);
    });
  }

  QueryBuilder<Supplement, Supplement, QAfterSortBy> thenByPlaceholderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placeholder', Sort.desc);
    });
  }
}

extension SupplementQueryWhereDistinct
    on QueryBuilder<Supplement, Supplement, QDistinct> {
  QueryBuilder<Supplement, Supplement, QDistinct> distinctByPlaceholder() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'placeholder');
    });
  }
}

extension SupplementQueryProperty
    on QueryBuilder<Supplement, Supplement, QQueryProperty> {
  QueryBuilder<Supplement, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Supplement, int?, QQueryOperations> placeholderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'placeholder');
    });
  }
}
