// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetLoginResponseCollection on Isar {
  IsarCollection<LoginResponse> get loginResponses => this.collection();
}

const LoginResponseSchema = CollectionSchema(
  name: r'LoginResponse',
  id: -760123700412570091,
  properties: {
    r'tokens': PropertySchema(
      id: 0,
      name: r'tokens',
      type: IsarType.object,
      target: r'Tokens',
    ),
    r'user': PropertySchema(
      id: 1,
      name: r'user',
      type: IsarType.object,
      target: r'User',
    )
  },
  estimateSize: _loginResponseEstimateSize,
  serialize: _loginResponseSerialize,
  deserialize: _loginResponseDeserialize,
  deserializeProp: _loginResponseDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'User': UserSchema,
    r'Tokens': TokensSchema,
    r'Access': AccessSchema,
    r'Refresh': RefreshSchema
  },
  getId: _loginResponseGetId,
  getLinks: _loginResponseGetLinks,
  attach: _loginResponseAttach,
  version: '3.1.0+1',
);

int _loginResponseEstimateSize(
  LoginResponse object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.tokens;
    if (value != null) {
      bytesCount +=
          3 + TokensSchema.estimateSize(value, allOffsets[Tokens]!, allOffsets);
    }
  }
  {
    final value = object.user;
    if (value != null) {
      bytesCount +=
          3 + UserSchema.estimateSize(value, allOffsets[User]!, allOffsets);
    }
  }
  return bytesCount;
}

void _loginResponseSerialize(
  LoginResponse object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<Tokens>(
    offsets[0],
    allOffsets,
    TokensSchema.serialize,
    object.tokens,
  );
  writer.writeObject<User>(
    offsets[1],
    allOffsets,
    UserSchema.serialize,
    object.user,
  );
}

LoginResponse _loginResponseDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = LoginResponse(
    tokens: reader.readObjectOrNull<Tokens>(
      offsets[0],
      TokensSchema.deserialize,
      allOffsets,
    ),
    user: reader.readObjectOrNull<User>(
      offsets[1],
      UserSchema.deserialize,
      allOffsets,
    ),
  );
  return object;
}

P _loginResponseDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<Tokens>(
        offset,
        TokensSchema.deserialize,
        allOffsets,
      )) as P;
    case 1:
      return (reader.readObjectOrNull<User>(
        offset,
        UserSchema.deserialize,
        allOffsets,
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _loginResponseGetId(LoginResponse object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _loginResponseGetLinks(LoginResponse object) {
  return [];
}

void _loginResponseAttach(
    IsarCollection<dynamic> col, Id id, LoginResponse object) {}

extension LoginResponseQueryWhereSort
    on QueryBuilder<LoginResponse, LoginResponse, QWhere> {
  QueryBuilder<LoginResponse, LoginResponse, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension LoginResponseQueryWhere
    on QueryBuilder<LoginResponse, LoginResponse, QWhereClause> {
  QueryBuilder<LoginResponse, LoginResponse, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<LoginResponse, LoginResponse, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<LoginResponse, LoginResponse, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<LoginResponse, LoginResponse, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<LoginResponse, LoginResponse, QAfterWhereClause> idBetween(
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

extension LoginResponseQueryFilter
    on QueryBuilder<LoginResponse, LoginResponse, QFilterCondition> {
  QueryBuilder<LoginResponse, LoginResponse, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<LoginResponse, LoginResponse, QAfterFilterCondition>
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

  QueryBuilder<LoginResponse, LoginResponse, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<LoginResponse, LoginResponse, QAfterFilterCondition> idBetween(
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

  QueryBuilder<LoginResponse, LoginResponse, QAfterFilterCondition>
      tokensIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tokens',
      ));
    });
  }

  QueryBuilder<LoginResponse, LoginResponse, QAfterFilterCondition>
      tokensIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tokens',
      ));
    });
  }

  QueryBuilder<LoginResponse, LoginResponse, QAfterFilterCondition>
      userIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'user',
      ));
    });
  }

  QueryBuilder<LoginResponse, LoginResponse, QAfterFilterCondition>
      userIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'user',
      ));
    });
  }
}

extension LoginResponseQueryObject
    on QueryBuilder<LoginResponse, LoginResponse, QFilterCondition> {
  QueryBuilder<LoginResponse, LoginResponse, QAfterFilterCondition> tokens(
      FilterQuery<Tokens> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'tokens');
    });
  }

  QueryBuilder<LoginResponse, LoginResponse, QAfterFilterCondition> user(
      FilterQuery<User> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'user');
    });
  }
}

extension LoginResponseQueryLinks
    on QueryBuilder<LoginResponse, LoginResponse, QFilterCondition> {}

extension LoginResponseQuerySortBy
    on QueryBuilder<LoginResponse, LoginResponse, QSortBy> {}

extension LoginResponseQuerySortThenBy
    on QueryBuilder<LoginResponse, LoginResponse, QSortThenBy> {
  QueryBuilder<LoginResponse, LoginResponse, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<LoginResponse, LoginResponse, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension LoginResponseQueryWhereDistinct
    on QueryBuilder<LoginResponse, LoginResponse, QDistinct> {}

extension LoginResponseQueryProperty
    on QueryBuilder<LoginResponse, LoginResponse, QQueryProperty> {
  QueryBuilder<LoginResponse, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<LoginResponse, Tokens?, QQueryOperations> tokensProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tokens');
    });
  }

  QueryBuilder<LoginResponse, User?, QQueryOperations> userProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'user');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const UserSchema = Schema(
  name: r'User',
  id: -7838171048429979076,
  properties: {
    r'email': PropertySchema(
      id: 0,
      name: r'email',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 1,
      name: r'id',
      type: IsarType.string,
    ),
    r'isEmailVerified': PropertySchema(
      id: 2,
      name: r'isEmailVerified',
      type: IsarType.bool,
    ),
    r'name': PropertySchema(
      id: 3,
      name: r'name',
      type: IsarType.string,
    ),
    r'role': PropertySchema(
      id: 4,
      name: r'role',
      type: IsarType.string,
    )
  },
  estimateSize: _userEstimateSize,
  serialize: _userSerialize,
  deserialize: _userDeserialize,
  deserializeProp: _userDeserializeProp,
);

int _userEstimateSize(
  User object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.email;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.id;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.role;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _userSerialize(
  User object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.email);
  writer.writeString(offsets[1], object.id);
  writer.writeBool(offsets[2], object.isEmailVerified);
  writer.writeString(offsets[3], object.name);
  writer.writeString(offsets[4], object.role);
}

User _userDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = User(
    email: reader.readStringOrNull(offsets[0]),
    id: reader.readStringOrNull(offsets[1]),
    isEmailVerified: reader.readBoolOrNull(offsets[2]),
    name: reader.readStringOrNull(offsets[3]),
    role: reader.readStringOrNull(offsets[4]),
  );
  return object;
}

P _userDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readBoolOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension UserQueryFilter on QueryBuilder<User, User, QFilterCondition> {
  QueryBuilder<User, User, QAfterFilterCondition> emailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'email',
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> emailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'email',
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> emailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> emailGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> emailLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> emailBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'email',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> emailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> emailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> emailContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> emailMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'email',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> emailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> emailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> idEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> idGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> idLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> idBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> idContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> idMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> isEmailVerifiedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isEmailVerified',
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> isEmailVerifiedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isEmailVerified',
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> isEmailVerifiedEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isEmailVerified',
        value: value,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> nameContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> nameMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> roleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'role',
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> roleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'role',
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> roleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'role',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> roleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'role',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> roleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'role',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> roleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'role',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> roleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'role',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> roleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'role',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> roleContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'role',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> roleMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'role',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> roleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'role',
        value: '',
      ));
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> roleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'role',
        value: '',
      ));
    });
  }
}

extension UserQueryObject on QueryBuilder<User, User, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const TokensSchema = Schema(
  name: r'Tokens',
  id: 3476462796108257448,
  properties: {
    r'access': PropertySchema(
      id: 0,
      name: r'access',
      type: IsarType.object,
      target: r'Access',
    ),
    r'refresh': PropertySchema(
      id: 1,
      name: r'refresh',
      type: IsarType.object,
      target: r'Refresh',
    )
  },
  estimateSize: _tokensEstimateSize,
  serialize: _tokensSerialize,
  deserialize: _tokensDeserialize,
  deserializeProp: _tokensDeserializeProp,
);

int _tokensEstimateSize(
  Tokens object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.access;
    if (value != null) {
      bytesCount +=
          3 + AccessSchema.estimateSize(value, allOffsets[Access]!, allOffsets);
    }
  }
  {
    final value = object.refresh;
    if (value != null) {
      bytesCount += 3 +
          RefreshSchema.estimateSize(value, allOffsets[Refresh]!, allOffsets);
    }
  }
  return bytesCount;
}

void _tokensSerialize(
  Tokens object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<Access>(
    offsets[0],
    allOffsets,
    AccessSchema.serialize,
    object.access,
  );
  writer.writeObject<Refresh>(
    offsets[1],
    allOffsets,
    RefreshSchema.serialize,
    object.refresh,
  );
}

Tokens _tokensDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Tokens(
    access: reader.readObjectOrNull<Access>(
      offsets[0],
      AccessSchema.deserialize,
      allOffsets,
    ),
    refresh: reader.readObjectOrNull<Refresh>(
      offsets[1],
      RefreshSchema.deserialize,
      allOffsets,
    ),
  );
  return object;
}

P _tokensDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<Access>(
        offset,
        AccessSchema.deserialize,
        allOffsets,
      )) as P;
    case 1:
      return (reader.readObjectOrNull<Refresh>(
        offset,
        RefreshSchema.deserialize,
        allOffsets,
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension TokensQueryFilter on QueryBuilder<Tokens, Tokens, QFilterCondition> {
  QueryBuilder<Tokens, Tokens, QAfterFilterCondition> accessIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'access',
      ));
    });
  }

  QueryBuilder<Tokens, Tokens, QAfterFilterCondition> accessIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'access',
      ));
    });
  }

  QueryBuilder<Tokens, Tokens, QAfterFilterCondition> refreshIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'refresh',
      ));
    });
  }

  QueryBuilder<Tokens, Tokens, QAfterFilterCondition> refreshIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'refresh',
      ));
    });
  }
}

extension TokensQueryObject on QueryBuilder<Tokens, Tokens, QFilterCondition> {
  QueryBuilder<Tokens, Tokens, QAfterFilterCondition> access(
      FilterQuery<Access> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'access');
    });
  }

  QueryBuilder<Tokens, Tokens, QAfterFilterCondition> refresh(
      FilterQuery<Refresh> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'refresh');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const AccessSchema = Schema(
  name: r'Access',
  id: -5771261800239906241,
  properties: {
    r'expires': PropertySchema(
      id: 0,
      name: r'expires',
      type: IsarType.string,
    ),
    r'token': PropertySchema(
      id: 1,
      name: r'token',
      type: IsarType.string,
    )
  },
  estimateSize: _accessEstimateSize,
  serialize: _accessSerialize,
  deserialize: _accessDeserialize,
  deserializeProp: _accessDeserializeProp,
);

int _accessEstimateSize(
  Access object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.expires;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.token;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _accessSerialize(
  Access object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.expires);
  writer.writeString(offsets[1], object.token);
}

Access _accessDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Access(
    expires: reader.readStringOrNull(offsets[0]),
    token: reader.readStringOrNull(offsets[1]),
  );
  return object;
}

P _accessDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension AccessQueryFilter on QueryBuilder<Access, Access, QFilterCondition> {
  QueryBuilder<Access, Access, QAfterFilterCondition> expiresIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'expires',
      ));
    });
  }

  QueryBuilder<Access, Access, QAfterFilterCondition> expiresIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'expires',
      ));
    });
  }

  QueryBuilder<Access, Access, QAfterFilterCondition> expiresEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'expires',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Access, Access, QAfterFilterCondition> expiresGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'expires',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Access, Access, QAfterFilterCondition> expiresLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'expires',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Access, Access, QAfterFilterCondition> expiresBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'expires',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Access, Access, QAfterFilterCondition> expiresStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'expires',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Access, Access, QAfterFilterCondition> expiresEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'expires',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Access, Access, QAfterFilterCondition> expiresContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'expires',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Access, Access, QAfterFilterCondition> expiresMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'expires',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Access, Access, QAfterFilterCondition> expiresIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'expires',
        value: '',
      ));
    });
  }

  QueryBuilder<Access, Access, QAfterFilterCondition> expiresIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'expires',
        value: '',
      ));
    });
  }

  QueryBuilder<Access, Access, QAfterFilterCondition> tokenIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'token',
      ));
    });
  }

  QueryBuilder<Access, Access, QAfterFilterCondition> tokenIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'token',
      ));
    });
  }

  QueryBuilder<Access, Access, QAfterFilterCondition> tokenEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'token',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Access, Access, QAfterFilterCondition> tokenGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'token',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Access, Access, QAfterFilterCondition> tokenLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'token',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Access, Access, QAfterFilterCondition> tokenBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'token',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Access, Access, QAfterFilterCondition> tokenStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'token',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Access, Access, QAfterFilterCondition> tokenEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'token',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Access, Access, QAfterFilterCondition> tokenContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'token',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Access, Access, QAfterFilterCondition> tokenMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'token',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Access, Access, QAfterFilterCondition> tokenIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'token',
        value: '',
      ));
    });
  }

  QueryBuilder<Access, Access, QAfterFilterCondition> tokenIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'token',
        value: '',
      ));
    });
  }
}

extension AccessQueryObject on QueryBuilder<Access, Access, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const RefreshSchema = Schema(
  name: r'Refresh',
  id: -6562040069214499096,
  properties: {
    r'expires': PropertySchema(
      id: 0,
      name: r'expires',
      type: IsarType.string,
    ),
    r'token': PropertySchema(
      id: 1,
      name: r'token',
      type: IsarType.string,
    )
  },
  estimateSize: _refreshEstimateSize,
  serialize: _refreshSerialize,
  deserialize: _refreshDeserialize,
  deserializeProp: _refreshDeserializeProp,
);

int _refreshEstimateSize(
  Refresh object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.expires;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.token;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _refreshSerialize(
  Refresh object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.expires);
  writer.writeString(offsets[1], object.token);
}

Refresh _refreshDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Refresh(
    expires: reader.readStringOrNull(offsets[0]),
    token: reader.readStringOrNull(offsets[1]),
  );
  return object;
}

P _refreshDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension RefreshQueryFilter
    on QueryBuilder<Refresh, Refresh, QFilterCondition> {
  QueryBuilder<Refresh, Refresh, QAfterFilterCondition> expiresIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'expires',
      ));
    });
  }

  QueryBuilder<Refresh, Refresh, QAfterFilterCondition> expiresIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'expires',
      ));
    });
  }

  QueryBuilder<Refresh, Refresh, QAfterFilterCondition> expiresEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'expires',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Refresh, Refresh, QAfterFilterCondition> expiresGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'expires',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Refresh, Refresh, QAfterFilterCondition> expiresLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'expires',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Refresh, Refresh, QAfterFilterCondition> expiresBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'expires',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Refresh, Refresh, QAfterFilterCondition> expiresStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'expires',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Refresh, Refresh, QAfterFilterCondition> expiresEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'expires',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Refresh, Refresh, QAfterFilterCondition> expiresContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'expires',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Refresh, Refresh, QAfterFilterCondition> expiresMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'expires',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Refresh, Refresh, QAfterFilterCondition> expiresIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'expires',
        value: '',
      ));
    });
  }

  QueryBuilder<Refresh, Refresh, QAfterFilterCondition> expiresIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'expires',
        value: '',
      ));
    });
  }

  QueryBuilder<Refresh, Refresh, QAfterFilterCondition> tokenIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'token',
      ));
    });
  }

  QueryBuilder<Refresh, Refresh, QAfterFilterCondition> tokenIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'token',
      ));
    });
  }

  QueryBuilder<Refresh, Refresh, QAfterFilterCondition> tokenEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'token',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Refresh, Refresh, QAfterFilterCondition> tokenGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'token',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Refresh, Refresh, QAfterFilterCondition> tokenLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'token',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Refresh, Refresh, QAfterFilterCondition> tokenBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'token',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Refresh, Refresh, QAfterFilterCondition> tokenStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'token',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Refresh, Refresh, QAfterFilterCondition> tokenEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'token',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Refresh, Refresh, QAfterFilterCondition> tokenContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'token',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Refresh, Refresh, QAfterFilterCondition> tokenMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'token',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Refresh, Refresh, QAfterFilterCondition> tokenIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'token',
        value: '',
      ));
    });
  }

  QueryBuilder<Refresh, Refresh, QAfterFilterCondition> tokenIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'token',
        value: '',
      ));
    });
  }
}

extension RefreshQueryObject
    on QueryBuilder<Refresh, Refresh, QFilterCondition> {}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginRequestImpl _$$LoginRequestImplFromJson(Map<String, dynamic> json) =>
    _$LoginRequestImpl(
      idToken: json['idToken'] as String,
      accessToken: json['accessToken'] as String,
    );

Map<String, dynamic> _$$LoginRequestImplToJson(_$LoginRequestImpl instance) =>
    <String, dynamic>{
      'idToken': instance.idToken,
      'accessToken': instance.accessToken,
    };

_$LoginResponseImpl _$$LoginResponseImplFromJson(Map<String, dynamic> json) =>
    _$LoginResponseImpl(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      tokens: json['tokens'] == null
          ? null
          : Tokens.fromJson(json['tokens'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginResponseImplToJson(_$LoginResponseImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'tokens': instance.tokens,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      name: json['name'] as String?,
      email: json['email'] as String?,
      role: json['role'] as String?,
      isEmailVerified: json['isEmailVerified'] as bool?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'role': instance.role,
      'isEmailVerified': instance.isEmailVerified,
      'id': instance.id,
    };

_$TokensImpl _$$TokensImplFromJson(Map<String, dynamic> json) => _$TokensImpl(
      access: json['access'] == null
          ? null
          : Access.fromJson(json['access'] as Map<String, dynamic>),
      refresh: json['refresh'] == null
          ? null
          : Refresh.fromJson(json['refresh'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TokensImplToJson(_$TokensImpl instance) =>
    <String, dynamic>{
      'access': instance.access,
      'refresh': instance.refresh,
    };

_$AccessImpl _$$AccessImplFromJson(Map<String, dynamic> json) => _$AccessImpl(
      token: json['token'] as String?,
      expires: json['expires'] as String?,
    );

Map<String, dynamic> _$$AccessImplToJson(_$AccessImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'expires': instance.expires,
    };

_$RefreshImpl _$$RefreshImplFromJson(Map<String, dynamic> json) =>
    _$RefreshImpl(
      token: json['token'] as String?,
      expires: json['expires'] as String?,
    );

Map<String, dynamic> _$$RefreshImplToJson(_$RefreshImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'expires': instance.expires,
    };
