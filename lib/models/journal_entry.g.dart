// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'journal_entry.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$JournalEntryCWProxy {
  JournalEntry placeholder(int? placeholder);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `JournalEntry(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// JournalEntry(...).copyWith(id: 12, name: "My name")
  /// ````
  JournalEntry call({
    int? placeholder,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfJournalEntry.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfJournalEntry.copyWith.fieldName(...)`
class _$JournalEntryCWProxyImpl implements _$JournalEntryCWProxy {
  const _$JournalEntryCWProxyImpl(this._value);

  final JournalEntry _value;

  @override
  JournalEntry placeholder(int? placeholder) => this(placeholder: placeholder);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `JournalEntry(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// JournalEntry(...).copyWith(id: 12, name: "My name")
  /// ````
  JournalEntry call({
    Object? placeholder = const $CopyWithPlaceholder(),
  }) {
    return JournalEntry(
      placeholder: placeholder == const $CopyWithPlaceholder()
          ? _value.placeholder
          // ignore: cast_nullable_to_non_nullable
          : placeholder as int?,
    );
  }
}

extension $JournalEntryCopyWith on JournalEntry {
  /// Returns a callable class that can be used as follows: `instanceOfJournalEntry.copyWith(...)` or like so:`instanceOfJournalEntry.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$JournalEntryCWProxy get copyWith => _$JournalEntryCWProxyImpl(this);
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const JournalEntrySchema = Schema(
  name: r'JournalEntry',
  id: -8443410721192565146,
  properties: {
    r'placeholder': PropertySchema(
      id: 0,
      name: r'placeholder',
      type: IsarType.long,
    )
  },
  estimateSize: _journalEntryEstimateSize,
  serialize: _journalEntrySerialize,
  deserialize: _journalEntryDeserialize,
  deserializeProp: _journalEntryDeserializeProp,
);

int _journalEntryEstimateSize(
  JournalEntry object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _journalEntrySerialize(
  JournalEntry object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.placeholder);
}

JournalEntry _journalEntryDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = JournalEntry(
    placeholder: reader.readLongOrNull(offsets[0]),
  );
  return object;
}

P _journalEntryDeserializeProp<P>(
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

extension JournalEntryQueryFilter
    on QueryBuilder<JournalEntry, JournalEntry, QFilterCondition> {
  QueryBuilder<JournalEntry, JournalEntry, QAfterFilterCondition>
      placeholderIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'placeholder',
      ));
    });
  }

  QueryBuilder<JournalEntry, JournalEntry, QAfterFilterCondition>
      placeholderIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'placeholder',
      ));
    });
  }

  QueryBuilder<JournalEntry, JournalEntry, QAfterFilterCondition>
      placeholderEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'placeholder',
        value: value,
      ));
    });
  }

  QueryBuilder<JournalEntry, JournalEntry, QAfterFilterCondition>
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

  QueryBuilder<JournalEntry, JournalEntry, QAfterFilterCondition>
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

  QueryBuilder<JournalEntry, JournalEntry, QAfterFilterCondition>
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

extension JournalEntryQueryObject
    on QueryBuilder<JournalEntry, JournalEntry, QFilterCondition> {}
