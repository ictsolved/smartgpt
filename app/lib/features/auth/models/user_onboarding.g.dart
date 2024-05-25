// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_onboarding.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetUserOnBoardingCollection on Isar {
  IsarCollection<UserOnBoarding> get userOnBoardings => this.collection();
}

const UserOnBoardingSchema = CollectionSchema(
  name: r'UserOnBoarding',
  id: 6960725008415041479,
  properties: {
    r'onboarded': PropertySchema(
      id: 0,
      name: r'onboarded',
      type: IsarType.bool,
    )
  },
  estimateSize: _userOnBoardingEstimateSize,
  serialize: _userOnBoardingSerialize,
  deserialize: _userOnBoardingDeserialize,
  deserializeProp: _userOnBoardingDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _userOnBoardingGetId,
  getLinks: _userOnBoardingGetLinks,
  attach: _userOnBoardingAttach,
  version: '3.1.0+1',
);

int _userOnBoardingEstimateSize(
  UserOnBoarding object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _userOnBoardingSerialize(
  UserOnBoarding object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.onboarded);
}

UserOnBoarding _userOnBoardingDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = UserOnBoarding(
    onboarded: reader.readBoolOrNull(offsets[0]) ?? true,
  );
  return object;
}

P _userOnBoardingDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBoolOrNull(offset) ?? true) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _userOnBoardingGetId(UserOnBoarding object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _userOnBoardingGetLinks(UserOnBoarding object) {
  return [];
}

void _userOnBoardingAttach(
    IsarCollection<dynamic> col, Id id, UserOnBoarding object) {}

extension UserOnBoardingQueryWhereSort
    on QueryBuilder<UserOnBoarding, UserOnBoarding, QWhere> {
  QueryBuilder<UserOnBoarding, UserOnBoarding, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension UserOnBoardingQueryWhere
    on QueryBuilder<UserOnBoarding, UserOnBoarding, QWhereClause> {
  QueryBuilder<UserOnBoarding, UserOnBoarding, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<UserOnBoarding, UserOnBoarding, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<UserOnBoarding, UserOnBoarding, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<UserOnBoarding, UserOnBoarding, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<UserOnBoarding, UserOnBoarding, QAfterWhereClause> idBetween(
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

extension UserOnBoardingQueryFilter
    on QueryBuilder<UserOnBoarding, UserOnBoarding, QFilterCondition> {
  QueryBuilder<UserOnBoarding, UserOnBoarding, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<UserOnBoarding, UserOnBoarding, QAfterFilterCondition>
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

  QueryBuilder<UserOnBoarding, UserOnBoarding, QAfterFilterCondition>
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

  QueryBuilder<UserOnBoarding, UserOnBoarding, QAfterFilterCondition> idBetween(
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

  QueryBuilder<UserOnBoarding, UserOnBoarding, QAfterFilterCondition>
      onboardedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'onboarded',
        value: value,
      ));
    });
  }
}

extension UserOnBoardingQueryObject
    on QueryBuilder<UserOnBoarding, UserOnBoarding, QFilterCondition> {}

extension UserOnBoardingQueryLinks
    on QueryBuilder<UserOnBoarding, UserOnBoarding, QFilterCondition> {}

extension UserOnBoardingQuerySortBy
    on QueryBuilder<UserOnBoarding, UserOnBoarding, QSortBy> {
  QueryBuilder<UserOnBoarding, UserOnBoarding, QAfterSortBy> sortByOnboarded() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'onboarded', Sort.asc);
    });
  }

  QueryBuilder<UserOnBoarding, UserOnBoarding, QAfterSortBy>
      sortByOnboardedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'onboarded', Sort.desc);
    });
  }
}

extension UserOnBoardingQuerySortThenBy
    on QueryBuilder<UserOnBoarding, UserOnBoarding, QSortThenBy> {
  QueryBuilder<UserOnBoarding, UserOnBoarding, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<UserOnBoarding, UserOnBoarding, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<UserOnBoarding, UserOnBoarding, QAfterSortBy> thenByOnboarded() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'onboarded', Sort.asc);
    });
  }

  QueryBuilder<UserOnBoarding, UserOnBoarding, QAfterSortBy>
      thenByOnboardedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'onboarded', Sort.desc);
    });
  }
}

extension UserOnBoardingQueryWhereDistinct
    on QueryBuilder<UserOnBoarding, UserOnBoarding, QDistinct> {
  QueryBuilder<UserOnBoarding, UserOnBoarding, QDistinct>
      distinctByOnboarded() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'onboarded');
    });
  }
}

extension UserOnBoardingQueryProperty
    on QueryBuilder<UserOnBoarding, UserOnBoarding, QQueryProperty> {
  QueryBuilder<UserOnBoarding, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<UserOnBoarding, bool, QQueryOperations> onboardedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'onboarded');
    });
  }
}
