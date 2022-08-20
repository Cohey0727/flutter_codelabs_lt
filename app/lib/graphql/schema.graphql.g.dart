// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InputIntComparisonExp _$InputIntComparisonExpFromJson(
        Map<String, dynamic> json) =>
    InputIntComparisonExp(
      $_eq: json['_eq'] as int?,
      $_gt: json['_gt'] as int?,
      $_gte: json['_gte'] as int?,
      $_in: (json['_in'] as List<dynamic>?)?.map((e) => e as int).toList(),
      $_is_null: json['_is_null'] as bool?,
      $_lt: json['_lt'] as int?,
      $_lte: json['_lte'] as int?,
      $_neq: json['_neq'] as int?,
      $_nin: (json['_nin'] as List<dynamic>?)?.map((e) => e as int).toList(),
    );

Map<String, dynamic> _$InputIntComparisonExpToJson(
    InputIntComparisonExp instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_eq', instance.$_eq);
  writeNotNull('_gt', instance.$_gt);
  writeNotNull('_gte', instance.$_gte);
  writeNotNull('_in', instance.$_in);
  writeNotNull('_is_null', instance.$_is_null);
  writeNotNull('_lt', instance.$_lt);
  writeNotNull('_lte', instance.$_lte);
  writeNotNull('_neq', instance.$_neq);
  writeNotNull('_nin', instance.$_nin);
  return val;
}

InputStringComparisonExp _$InputStringComparisonExpFromJson(
        Map<String, dynamic> json) =>
    InputStringComparisonExp(
      $_eq: json['_eq'] as String?,
      $_gt: json['_gt'] as String?,
      $_gte: json['_gte'] as String?,
      $_ilike: json['_ilike'] as String?,
      $_in: (json['_in'] as List<dynamic>?)?.map((e) => e as String).toList(),
      $_iregex: json['_iregex'] as String?,
      $_is_null: json['_is_null'] as bool?,
      $_like: json['_like'] as String?,
      $_lt: json['_lt'] as String?,
      $_lte: json['_lte'] as String?,
      $_neq: json['_neq'] as String?,
      $_nilike: json['_nilike'] as String?,
      $_nin: (json['_nin'] as List<dynamic>?)?.map((e) => e as String).toList(),
      $_niregex: json['_niregex'] as String?,
      $_nlike: json['_nlike'] as String?,
      $_nregex: json['_nregex'] as String?,
      $_nsimilar: json['_nsimilar'] as String?,
      $_regex: json['_regex'] as String?,
      $_similar: json['_similar'] as String?,
    );

Map<String, dynamic> _$InputStringComparisonExpToJson(
    InputStringComparisonExp instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_eq', instance.$_eq);
  writeNotNull('_gt', instance.$_gt);
  writeNotNull('_gte', instance.$_gte);
  writeNotNull('_ilike', instance.$_ilike);
  writeNotNull('_in', instance.$_in);
  writeNotNull('_iregex', instance.$_iregex);
  writeNotNull('_is_null', instance.$_is_null);
  writeNotNull('_like', instance.$_like);
  writeNotNull('_lt', instance.$_lt);
  writeNotNull('_lte', instance.$_lte);
  writeNotNull('_neq', instance.$_neq);
  writeNotNull('_nilike', instance.$_nilike);
  writeNotNull('_nin', instance.$_nin);
  writeNotNull('_niregex', instance.$_niregex);
  writeNotNull('_nlike', instance.$_nlike);
  writeNotNull('_nregex', instance.$_nregex);
  writeNotNull('_nsimilar', instance.$_nsimilar);
  writeNotNull('_regex', instance.$_regex);
  writeNotNull('_similar', instance.$_similar);
  return val;
}

InputUserBoolExp _$InputUserBoolExpFromJson(Map<String, dynamic> json) =>
    InputUserBoolExp(
      $_and: (json['_and'] as List<dynamic>?)
          ?.map((e) => InputUserBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      $_not: json['_not'] == null
          ? null
          : InputUserBoolExp.fromJson(json['_not'] as Map<String, dynamic>),
      $_or: (json['_or'] as List<dynamic>?)
          ?.map((e) => InputUserBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      age: json['age'] == null
          ? null
          : InputIntComparisonExp.fromJson(json['age'] as Map<String, dynamic>),
      companyName: json['companyName'] == null
          ? null
          : InputStringComparisonExp.fromJson(
              json['companyName'] as Map<String, dynamic>),
      fullName: json['fullName'] == null
          ? null
          : InputStringComparisonExp.fromJson(
              json['fullName'] as Map<String, dynamic>),
      id: json['id'] == null
          ? null
          : InputuuidComparisonExp.fromJson(json['id'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputUserBoolExpToJson(InputUserBoolExp instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_and', instance.$_and?.map((e) => e.toJson()).toList());
  writeNotNull('_not', instance.$_not?.toJson());
  writeNotNull('_or', instance.$_or?.map((e) => e.toJson()).toList());
  writeNotNull('age', instance.age?.toJson());
  writeNotNull('companyName', instance.companyName?.toJson());
  writeNotNull('fullName', instance.fullName?.toJson());
  writeNotNull('id', instance.id?.toJson());
  return val;
}

InputUserIncInput _$InputUserIncInputFromJson(Map<String, dynamic> json) =>
    InputUserIncInput(
      age: json['age'] as int?,
    );

Map<String, dynamic> _$InputUserIncInputToJson(InputUserIncInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('age', instance.age);
  return val;
}

InputUserInsertInput _$InputUserInsertInputFromJson(
        Map<String, dynamic> json) =>
    InputUserInsertInput(
      age: json['age'] as int?,
      companyName: json['companyName'] as String?,
      fullName: json['fullName'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$InputUserInsertInputToJson(
    InputUserInsertInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('age', instance.age);
  writeNotNull('companyName', instance.companyName);
  writeNotNull('fullName', instance.fullName);
  writeNotNull('id', instance.id);
  return val;
}

InputUserOnConflict _$InputUserOnConflictFromJson(Map<String, dynamic> json) =>
    InputUserOnConflict(
      constraint: $enumDecode(_$EnumUserConstraintEnumMap, json['constraint'],
          unknownValue: EnumUserConstraint.$unknown),
      update_columns: (json['update_columns'] as List<dynamic>)
          .map((e) => $enumDecode(_$EnumUserUpdateColumnEnumMap, e,
              unknownValue: EnumUserUpdateColumn.$unknown))
          .toList(),
      where: json['where'] == null
          ? null
          : InputUserBoolExp.fromJson(json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputUserOnConflictToJson(InputUserOnConflict instance) {
  final val = <String, dynamic>{
    'constraint': _$EnumUserConstraintEnumMap[instance.constraint]!,
    'update_columns': instance.update_columns
        .map((e) => _$EnumUserUpdateColumnEnumMap[e]!)
        .toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('where', instance.where?.toJson());
  return val;
}

const _$EnumUserConstraintEnumMap = {
  EnumUserConstraint.userPkey: 'User_pkey',
  EnumUserConstraint.$unknown: r'$unknown',
};

const _$EnumUserUpdateColumnEnumMap = {
  EnumUserUpdateColumn.age: 'age',
  EnumUserUpdateColumn.companyName: 'companyName',
  EnumUserUpdateColumn.fullName: 'fullName',
  EnumUserUpdateColumn.id: 'id',
  EnumUserUpdateColumn.$unknown: r'$unknown',
};

InputUserOrderBy _$InputUserOrderByFromJson(Map<String, dynamic> json) =>
    InputUserOrderBy(
      age: $enumDecodeNullable(_$EnumorderByEnumMap, json['age'],
          unknownValue: EnumorderBy.$unknown),
      companyName: $enumDecodeNullable(
          _$EnumorderByEnumMap, json['companyName'],
          unknownValue: EnumorderBy.$unknown),
      fullName: $enumDecodeNullable(_$EnumorderByEnumMap, json['fullName'],
          unknownValue: EnumorderBy.$unknown),
      id: $enumDecodeNullable(_$EnumorderByEnumMap, json['id'],
          unknownValue: EnumorderBy.$unknown),
    );

Map<String, dynamic> _$InputUserOrderByToJson(InputUserOrderBy instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('age', _$EnumorderByEnumMap[instance.age]);
  writeNotNull('companyName', _$EnumorderByEnumMap[instance.companyName]);
  writeNotNull('fullName', _$EnumorderByEnumMap[instance.fullName]);
  writeNotNull('id', _$EnumorderByEnumMap[instance.id]);
  return val;
}

const _$EnumorderByEnumMap = {
  EnumorderBy.asc: 'asc',
  EnumorderBy.ascNullsFirst: 'asc_nulls_first',
  EnumorderBy.ascNullsLast: 'asc_nulls_last',
  EnumorderBy.desc: 'desc',
  EnumorderBy.descNullsFirst: 'desc_nulls_first',
  EnumorderBy.descNullsLast: 'desc_nulls_last',
  EnumorderBy.$unknown: r'$unknown',
};

InputUserPkColumnsInput _$InputUserPkColumnsInputFromJson(
        Map<String, dynamic> json) =>
    InputUserPkColumnsInput(
      id: json['id'] as String,
    );

Map<String, dynamic> _$InputUserPkColumnsInputToJson(
        InputUserPkColumnsInput instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

InputUserSetInput _$InputUserSetInputFromJson(Map<String, dynamic> json) =>
    InputUserSetInput(
      age: json['age'] as int?,
      companyName: json['companyName'] as String?,
      fullName: json['fullName'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$InputUserSetInputToJson(InputUserSetInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('age', instance.age);
  writeNotNull('companyName', instance.companyName);
  writeNotNull('fullName', instance.fullName);
  writeNotNull('id', instance.id);
  return val;
}

InputUserUpdates _$InputUserUpdatesFromJson(Map<String, dynamic> json) =>
    InputUserUpdates(
      $_inc: json['_inc'] == null
          ? null
          : InputUserIncInput.fromJson(json['_inc'] as Map<String, dynamic>),
      $_set: json['_set'] == null
          ? null
          : InputUserSetInput.fromJson(json['_set'] as Map<String, dynamic>),
      where: InputUserBoolExp.fromJson(json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InputUserUpdatesToJson(InputUserUpdates instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_inc', instance.$_inc?.toJson());
  writeNotNull('_set', instance.$_set?.toJson());
  val['where'] = instance.where.toJson();
  return val;
}

InputuuidComparisonExp _$InputuuidComparisonExpFromJson(
        Map<String, dynamic> json) =>
    InputuuidComparisonExp(
      $_eq: json['_eq'] as String?,
      $_gt: json['_gt'] as String?,
      $_gte: json['_gte'] as String?,
      $_in: (json['_in'] as List<dynamic>?)?.map((e) => e as String).toList(),
      $_is_null: json['_is_null'] as bool?,
      $_lt: json['_lt'] as String?,
      $_lte: json['_lte'] as String?,
      $_neq: json['_neq'] as String?,
      $_nin: (json['_nin'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$InputuuidComparisonExpToJson(
    InputuuidComparisonExp instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_eq', instance.$_eq);
  writeNotNull('_gt', instance.$_gt);
  writeNotNull('_gte', instance.$_gte);
  writeNotNull('_in', instance.$_in);
  writeNotNull('_is_null', instance.$_is_null);
  writeNotNull('_lt', instance.$_lt);
  writeNotNull('_lte', instance.$_lte);
  writeNotNull('_neq', instance.$_neq);
  writeNotNull('_nin', instance.$_nin);
  return val;
}
