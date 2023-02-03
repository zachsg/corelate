// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sun.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SunCWProxy {
  Sun placeholder(int? placeholder);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Sun(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Sun(...).copyWith(id: 12, name: "My name")
  /// ````
  Sun call({
    int? placeholder,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSun.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSun.copyWith.fieldName(...)`
class _$SunCWProxyImpl implements _$SunCWProxy {
  const _$SunCWProxyImpl(this._value);

  final Sun _value;

  @override
  Sun placeholder(int? placeholder) => this(placeholder: placeholder);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Sun(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Sun(...).copyWith(id: 12, name: "My name")
  /// ````
  Sun call({
    Object? placeholder = const $CopyWithPlaceholder(),
  }) {
    return Sun(
      placeholder: placeholder == const $CopyWithPlaceholder()
          ? _value.placeholder
          // ignore: cast_nullable_to_non_nullable
          : placeholder as int?,
    );
  }
}

extension $SunCopyWith on Sun {
  /// Returns a callable class that can be used as follows: `instanceOfSun.copyWith(...)` or like so:`instanceOfSun.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SunCWProxy get copyWith => _$SunCWProxyImpl(this);
}

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetSunCollection on Isar {
  IsarCollection<Sun> get suns => this.collection();
}

const SunSchema = CollectionSchema(
  name: r'Sun',
  id: -8380427164950527963,
  properties: {
    r'placeholder': PropertySchema(
      id: 0,
      name: r'placeholder',
      type: IsarType.long,
    )
  },
  estimateSize: _sunEstimateSize,
  serialize: _sunSerialize,
  deserialize: _sunDeserialize,
  deserializeProp: _sunDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _sunGetId,
  getLinks: _sunGetLinks,
  attach: _sunAttach,
  version: '3.0.5',
);

int _sunEstimateSize(
  Sun object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _sunSerialize(
  Sun object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.placeholder);
}

Sun _sunDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Sun(
    placeholder: reader.readLongOrNull(offsets[0]),
  );
  object.id = id;
  return object;
}

P _sunDeserializeProp<P>(
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

Id _sunGetId(Sun object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _sunGetLinks(Sun object) {
  return [];
}

void _sunAttach(IsarCollection<dynamic> col, Id id, Sun object) {
  object.id = id;
}

extension SunQueryWhereSort on QueryBuilder<Sun, Sun, QWhere> {
  QueryBuilder<Sun, Sun, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SunQueryWhere on QueryBuilder<Sun, Sun, QWhereClause> {
  QueryBuilder<Sun, Sun, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Sun, Sun, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Sun, Sun, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Sun, Sun, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Sun, Sun, QAfterWhereClause> idBetween(
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

extension SunQueryFilter on QueryBuilder<Sun, Sun, QFilterCondition> {
  QueryBuilder<Sun, Sun, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Sun, Sun, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Sun, Sun, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Sun, Sun, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Sun, Sun, QAfterFilterCondition> placeholderIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'placeholder',
      ));
    });
  }

  QueryBuilder<Sun, Sun, QAfterFilterCondition> placeholderIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'placeholder',
      ));
    });
  }

  QueryBuilder<Sun, Sun, QAfterFilterCondition> placeholderEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'placeholder',
        value: value,
      ));
    });
  }

  QueryBuilder<Sun, Sun, QAfterFilterCondition> placeholderGreaterThan(
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

  QueryBuilder<Sun, Sun, QAfterFilterCondition> placeholderLessThan(
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

  QueryBuilder<Sun, Sun, QAfterFilterCondition> placeholderBetween(
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

extension SunQueryObject on QueryBuilder<Sun, Sun, QFilterCondition> {}

extension SunQueryLinks on QueryBuilder<Sun, Sun, QFilterCondition> {}

extension SunQuerySortBy on QueryBuilder<Sun, Sun, QSortBy> {
  QueryBuilder<Sun, Sun, QAfterSortBy> sortByPlaceholder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placeholder', Sort.asc);
    });
  }

  QueryBuilder<Sun, Sun, QAfterSortBy> sortByPlaceholderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placeholder', Sort.desc);
    });
  }
}

extension SunQuerySortThenBy on QueryBuilder<Sun, Sun, QSortThenBy> {
  QueryBuilder<Sun, Sun, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Sun, Sun, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Sun, Sun, QAfterSortBy> thenByPlaceholder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placeholder', Sort.asc);
    });
  }

  QueryBuilder<Sun, Sun, QAfterSortBy> thenByPlaceholderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placeholder', Sort.desc);
    });
  }
}

extension SunQueryWhereDistinct on QueryBuilder<Sun, Sun, QDistinct> {
  QueryBuilder<Sun, Sun, QDistinct> distinctByPlaceholder() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'placeholder');
    });
  }
}

extension SunQueryProperty on QueryBuilder<Sun, Sun, QQueryProperty> {
  QueryBuilder<Sun, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Sun, int?, QQueryOperations> placeholderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'placeholder');
    });
  }
}
