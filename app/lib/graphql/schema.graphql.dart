import 'package:json_annotation/json_annotation.dart';
part 'schema.graphql.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class InputIntComparisonExp {
  InputIntComparisonExp(
      {this.$_eq,
      this.$_gt,
      this.$_gte,
      this.$_in,
      this.$_is_null,
      this.$_lt,
      this.$_lte,
      this.$_neq,
      this.$_nin});

  @override
  factory InputIntComparisonExp.fromJson(Map<String, dynamic> json) =>
      _$InputIntComparisonExpFromJson(json);

  @JsonKey(name: '_eq')
  final int? $_eq;

  @JsonKey(name: '_gt')
  final int? $_gt;

  @JsonKey(name: '_gte')
  final int? $_gte;

  @JsonKey(name: '_in')
  final List<int>? $_in;

  @JsonKey(name: '_is_null')
  final bool? $_is_null;

  @JsonKey(name: '_lt')
  final int? $_lt;

  @JsonKey(name: '_lte')
  final int? $_lte;

  @JsonKey(name: '_neq')
  final int? $_neq;

  @JsonKey(name: '_nin')
  final List<int>? $_nin;

  Map<String, dynamic> toJson() => _$InputIntComparisonExpToJson(this);
  int get hashCode {
    final l$$_eq = $_eq;
    final l$$_gt = $_gt;
    final l$$_gte = $_gte;
    final l$$_in = $_in;
    final l$$_is_null = $_is_null;
    final l$$_lt = $_lt;
    final l$$_lte = $_lte;
    final l$$_neq = $_neq;
    final l$$_nin = $_nin;
    return Object.hashAll([
      l$$_eq,
      l$$_gt,
      l$$_gte,
      l$$_in == null ? null : Object.hashAll(l$$_in.map((v) => v)),
      l$$_is_null,
      l$$_lt,
      l$$_lte,
      l$$_neq,
      l$$_nin == null ? null : Object.hashAll(l$$_nin.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputIntComparisonExp) || runtimeType != other.runtimeType)
      return false;
    final l$$_eq = $_eq;
    final lOther$$_eq = other.$_eq;
    if (l$$_eq != lOther$$_eq) return false;
    final l$$_gt = $_gt;
    final lOther$$_gt = other.$_gt;
    if (l$$_gt != lOther$$_gt) return false;
    final l$$_gte = $_gte;
    final lOther$$_gte = other.$_gte;
    if (l$$_gte != lOther$$_gte) return false;
    final l$$_in = $_in;
    final lOther$$_in = other.$_in;
    if (l$$_in != null && lOther$$_in != null) {
      if (l$$_in.length != lOther$$_in.length) return false;
      for (int i = 0; i < l$$_in.length; i++) {
        final l$$_in$entry = l$$_in[i];
        final lOther$$_in$entry = lOther$$_in[i];
        if (l$$_in$entry != lOther$$_in$entry) return false;
      }
    } else if (l$$_in != lOther$$_in) {
      return false;
    }

    final l$$_is_null = $_is_null;
    final lOther$$_is_null = other.$_is_null;
    if (l$$_is_null != lOther$$_is_null) return false;
    final l$$_lt = $_lt;
    final lOther$$_lt = other.$_lt;
    if (l$$_lt != lOther$$_lt) return false;
    final l$$_lte = $_lte;
    final lOther$$_lte = other.$_lte;
    if (l$$_lte != lOther$$_lte) return false;
    final l$$_neq = $_neq;
    final lOther$$_neq = other.$_neq;
    if (l$$_neq != lOther$$_neq) return false;
    final l$$_nin = $_nin;
    final lOther$$_nin = other.$_nin;
    if (l$$_nin != null && lOther$$_nin != null) {
      if (l$$_nin.length != lOther$$_nin.length) return false;
      for (int i = 0; i < l$$_nin.length; i++) {
        final l$$_nin$entry = l$$_nin[i];
        final lOther$$_nin$entry = lOther$$_nin[i];
        if (l$$_nin$entry != lOther$$_nin$entry) return false;
      }
    } else if (l$$_nin != lOther$$_nin) {
      return false;
    }

    return true;
  }
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class InputStringComparisonExp {
  InputStringComparisonExp(
      {this.$_eq,
      this.$_gt,
      this.$_gte,
      this.$_ilike,
      this.$_in,
      this.$_iregex,
      this.$_is_null,
      this.$_like,
      this.$_lt,
      this.$_lte,
      this.$_neq,
      this.$_nilike,
      this.$_nin,
      this.$_niregex,
      this.$_nlike,
      this.$_nregex,
      this.$_nsimilar,
      this.$_regex,
      this.$_similar});

  @override
  factory InputStringComparisonExp.fromJson(Map<String, dynamic> json) =>
      _$InputStringComparisonExpFromJson(json);

  @JsonKey(name: '_eq')
  final String? $_eq;

  @JsonKey(name: '_gt')
  final String? $_gt;

  @JsonKey(name: '_gte')
  final String? $_gte;

  @JsonKey(name: '_ilike')
  final String? $_ilike;

  @JsonKey(name: '_in')
  final List<String>? $_in;

  @JsonKey(name: '_iregex')
  final String? $_iregex;

  @JsonKey(name: '_is_null')
  final bool? $_is_null;

  @JsonKey(name: '_like')
  final String? $_like;

  @JsonKey(name: '_lt')
  final String? $_lt;

  @JsonKey(name: '_lte')
  final String? $_lte;

  @JsonKey(name: '_neq')
  final String? $_neq;

  @JsonKey(name: '_nilike')
  final String? $_nilike;

  @JsonKey(name: '_nin')
  final List<String>? $_nin;

  @JsonKey(name: '_niregex')
  final String? $_niregex;

  @JsonKey(name: '_nlike')
  final String? $_nlike;

  @JsonKey(name: '_nregex')
  final String? $_nregex;

  @JsonKey(name: '_nsimilar')
  final String? $_nsimilar;

  @JsonKey(name: '_regex')
  final String? $_regex;

  @JsonKey(name: '_similar')
  final String? $_similar;

  Map<String, dynamic> toJson() => _$InputStringComparisonExpToJson(this);
  int get hashCode {
    final l$$_eq = $_eq;
    final l$$_gt = $_gt;
    final l$$_gte = $_gte;
    final l$$_ilike = $_ilike;
    final l$$_in = $_in;
    final l$$_iregex = $_iregex;
    final l$$_is_null = $_is_null;
    final l$$_like = $_like;
    final l$$_lt = $_lt;
    final l$$_lte = $_lte;
    final l$$_neq = $_neq;
    final l$$_nilike = $_nilike;
    final l$$_nin = $_nin;
    final l$$_niregex = $_niregex;
    final l$$_nlike = $_nlike;
    final l$$_nregex = $_nregex;
    final l$$_nsimilar = $_nsimilar;
    final l$$_regex = $_regex;
    final l$$_similar = $_similar;
    return Object.hashAll([
      l$$_eq,
      l$$_gt,
      l$$_gte,
      l$$_ilike,
      l$$_in == null ? null : Object.hashAll(l$$_in.map((v) => v)),
      l$$_iregex,
      l$$_is_null,
      l$$_like,
      l$$_lt,
      l$$_lte,
      l$$_neq,
      l$$_nilike,
      l$$_nin == null ? null : Object.hashAll(l$$_nin.map((v) => v)),
      l$$_niregex,
      l$$_nlike,
      l$$_nregex,
      l$$_nsimilar,
      l$$_regex,
      l$$_similar
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputStringComparisonExp) ||
        runtimeType != other.runtimeType) return false;
    final l$$_eq = $_eq;
    final lOther$$_eq = other.$_eq;
    if (l$$_eq != lOther$$_eq) return false;
    final l$$_gt = $_gt;
    final lOther$$_gt = other.$_gt;
    if (l$$_gt != lOther$$_gt) return false;
    final l$$_gte = $_gte;
    final lOther$$_gte = other.$_gte;
    if (l$$_gte != lOther$$_gte) return false;
    final l$$_ilike = $_ilike;
    final lOther$$_ilike = other.$_ilike;
    if (l$$_ilike != lOther$$_ilike) return false;
    final l$$_in = $_in;
    final lOther$$_in = other.$_in;
    if (l$$_in != null && lOther$$_in != null) {
      if (l$$_in.length != lOther$$_in.length) return false;
      for (int i = 0; i < l$$_in.length; i++) {
        final l$$_in$entry = l$$_in[i];
        final lOther$$_in$entry = lOther$$_in[i];
        if (l$$_in$entry != lOther$$_in$entry) return false;
      }
    } else if (l$$_in != lOther$$_in) {
      return false;
    }

    final l$$_iregex = $_iregex;
    final lOther$$_iregex = other.$_iregex;
    if (l$$_iregex != lOther$$_iregex) return false;
    final l$$_is_null = $_is_null;
    final lOther$$_is_null = other.$_is_null;
    if (l$$_is_null != lOther$$_is_null) return false;
    final l$$_like = $_like;
    final lOther$$_like = other.$_like;
    if (l$$_like != lOther$$_like) return false;
    final l$$_lt = $_lt;
    final lOther$$_lt = other.$_lt;
    if (l$$_lt != lOther$$_lt) return false;
    final l$$_lte = $_lte;
    final lOther$$_lte = other.$_lte;
    if (l$$_lte != lOther$$_lte) return false;
    final l$$_neq = $_neq;
    final lOther$$_neq = other.$_neq;
    if (l$$_neq != lOther$$_neq) return false;
    final l$$_nilike = $_nilike;
    final lOther$$_nilike = other.$_nilike;
    if (l$$_nilike != lOther$$_nilike) return false;
    final l$$_nin = $_nin;
    final lOther$$_nin = other.$_nin;
    if (l$$_nin != null && lOther$$_nin != null) {
      if (l$$_nin.length != lOther$$_nin.length) return false;
      for (int i = 0; i < l$$_nin.length; i++) {
        final l$$_nin$entry = l$$_nin[i];
        final lOther$$_nin$entry = lOther$$_nin[i];
        if (l$$_nin$entry != lOther$$_nin$entry) return false;
      }
    } else if (l$$_nin != lOther$$_nin) {
      return false;
    }

    final l$$_niregex = $_niregex;
    final lOther$$_niregex = other.$_niregex;
    if (l$$_niregex != lOther$$_niregex) return false;
    final l$$_nlike = $_nlike;
    final lOther$$_nlike = other.$_nlike;
    if (l$$_nlike != lOther$$_nlike) return false;
    final l$$_nregex = $_nregex;
    final lOther$$_nregex = other.$_nregex;
    if (l$$_nregex != lOther$$_nregex) return false;
    final l$$_nsimilar = $_nsimilar;
    final lOther$$_nsimilar = other.$_nsimilar;
    if (l$$_nsimilar != lOther$$_nsimilar) return false;
    final l$$_regex = $_regex;
    final lOther$$_regex = other.$_regex;
    if (l$$_regex != lOther$$_regex) return false;
    final l$$_similar = $_similar;
    final lOther$$_similar = other.$_similar;
    if (l$$_similar != lOther$$_similar) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class InputUserBoolExp {
  InputUserBoolExp(
      {this.$_and,
      this.$_not,
      this.$_or,
      this.age,
      this.companyName,
      this.fullName,
      this.id});

  @override
  factory InputUserBoolExp.fromJson(Map<String, dynamic> json) =>
      _$InputUserBoolExpFromJson(json);

  @JsonKey(name: '_and')
  final List<InputUserBoolExp>? $_and;

  @JsonKey(name: '_not')
  final InputUserBoolExp? $_not;

  @JsonKey(name: '_or')
  final List<InputUserBoolExp>? $_or;

  final InputIntComparisonExp? age;

  final InputStringComparisonExp? companyName;

  final InputStringComparisonExp? fullName;

  final InputuuidComparisonExp? id;

  Map<String, dynamic> toJson() => _$InputUserBoolExpToJson(this);
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$age = age;
    final l$companyName = companyName;
    final l$fullName = fullName;
    final l$id = id;
    return Object.hashAll([
      l$$_and == null ? null : Object.hashAll(l$$_and.map((v) => v)),
      l$$_not,
      l$$_or == null ? null : Object.hashAll(l$$_or.map((v) => v)),
      l$age,
      l$companyName,
      l$fullName,
      l$id
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputUserBoolExp) || runtimeType != other.runtimeType)
      return false;
    final l$$_and = $_and;
    final lOther$$_and = other.$_and;
    if (l$$_and != null && lOther$$_and != null) {
      if (l$$_and.length != lOther$$_and.length) return false;
      for (int i = 0; i < l$$_and.length; i++) {
        final l$$_and$entry = l$$_and[i];
        final lOther$$_and$entry = lOther$$_and[i];
        if (l$$_and$entry != lOther$$_and$entry) return false;
      }
    } else if (l$$_and != lOther$$_and) {
      return false;
    }

    final l$$_not = $_not;
    final lOther$$_not = other.$_not;
    if (l$$_not != lOther$$_not) return false;
    final l$$_or = $_or;
    final lOther$$_or = other.$_or;
    if (l$$_or != null && lOther$$_or != null) {
      if (l$$_or.length != lOther$$_or.length) return false;
      for (int i = 0; i < l$$_or.length; i++) {
        final l$$_or$entry = l$$_or[i];
        final lOther$$_or$entry = lOther$$_or[i];
        if (l$$_or$entry != lOther$$_or$entry) return false;
      }
    } else if (l$$_or != lOther$$_or) {
      return false;
    }

    final l$age = age;
    final lOther$age = other.age;
    if (l$age != lOther$age) return false;
    final l$companyName = companyName;
    final lOther$companyName = other.companyName;
    if (l$companyName != lOther$companyName) return false;
    final l$fullName = fullName;
    final lOther$fullName = other.fullName;
    if (l$fullName != lOther$fullName) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class InputUserIncInput {
  InputUserIncInput({this.age});

  @override
  factory InputUserIncInput.fromJson(Map<String, dynamic> json) =>
      _$InputUserIncInputFromJson(json);

  final int? age;

  Map<String, dynamic> toJson() => _$InputUserIncInputToJson(this);
  int get hashCode {
    final l$age = age;
    return Object.hashAll([l$age]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputUserIncInput) || runtimeType != other.runtimeType)
      return false;
    final l$age = age;
    final lOther$age = other.age;
    if (l$age != lOther$age) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class InputUserInsertInput {
  InputUserInsertInput({this.age, this.companyName, this.fullName, this.id});

  @override
  factory InputUserInsertInput.fromJson(Map<String, dynamic> json) =>
      _$InputUserInsertInputFromJson(json);

  final int? age;

  final String? companyName;

  final String? fullName;

  final String? id;

  Map<String, dynamic> toJson() => _$InputUserInsertInputToJson(this);
  int get hashCode {
    final l$age = age;
    final l$companyName = companyName;
    final l$fullName = fullName;
    final l$id = id;
    return Object.hashAll([l$age, l$companyName, l$fullName, l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputUserInsertInput) || runtimeType != other.runtimeType)
      return false;
    final l$age = age;
    final lOther$age = other.age;
    if (l$age != lOther$age) return false;
    final l$companyName = companyName;
    final lOther$companyName = other.companyName;
    if (l$companyName != lOther$companyName) return false;
    final l$fullName = fullName;
    final lOther$fullName = other.fullName;
    if (l$fullName != lOther$fullName) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class InputUserOnConflict {
  InputUserOnConflict(
      {required this.constraint, required this.update_columns, this.where});

  @override
  factory InputUserOnConflict.fromJson(Map<String, dynamic> json) =>
      _$InputUserOnConflictFromJson(json);

  @JsonKey(unknownEnumValue: EnumUserConstraint.$unknown)
  final EnumUserConstraint constraint;

  @JsonKey(unknownEnumValue: EnumUserUpdateColumn.$unknown)
  final List<EnumUserUpdateColumn> update_columns;

  final InputUserBoolExp? where;

  Map<String, dynamic> toJson() => _$InputUserOnConflictToJson(this);
  int get hashCode {
    final l$constraint = constraint;
    final l$update_columns = update_columns;
    final l$where = where;
    return Object.hashAll([
      l$constraint,
      Object.hashAll(l$update_columns.map((v) => v)),
      l$where
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputUserOnConflict) || runtimeType != other.runtimeType)
      return false;
    final l$constraint = constraint;
    final lOther$constraint = other.constraint;
    if (l$constraint != lOther$constraint) return false;
    final l$update_columns = update_columns;
    final lOther$update_columns = other.update_columns;
    if (l$update_columns.length != lOther$update_columns.length) return false;
    for (int i = 0; i < l$update_columns.length; i++) {
      final l$update_columns$entry = l$update_columns[i];
      final lOther$update_columns$entry = lOther$update_columns[i];
      if (l$update_columns$entry != lOther$update_columns$entry) return false;
    }

    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class InputUserOrderBy {
  InputUserOrderBy({this.age, this.companyName, this.fullName, this.id});

  @override
  factory InputUserOrderBy.fromJson(Map<String, dynamic> json) =>
      _$InputUserOrderByFromJson(json);

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? age;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? companyName;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? fullName;

  @JsonKey(unknownEnumValue: EnumorderBy.$unknown)
  final EnumorderBy? id;

  Map<String, dynamic> toJson() => _$InputUserOrderByToJson(this);
  int get hashCode {
    final l$age = age;
    final l$companyName = companyName;
    final l$fullName = fullName;
    final l$id = id;
    return Object.hashAll([l$age, l$companyName, l$fullName, l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputUserOrderBy) || runtimeType != other.runtimeType)
      return false;
    final l$age = age;
    final lOther$age = other.age;
    if (l$age != lOther$age) return false;
    final l$companyName = companyName;
    final lOther$companyName = other.companyName;
    if (l$companyName != lOther$companyName) return false;
    final l$fullName = fullName;
    final lOther$fullName = other.fullName;
    if (l$fullName != lOther$fullName) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class InputUserPkColumnsInput {
  InputUserPkColumnsInput({required this.id});

  @override
  factory InputUserPkColumnsInput.fromJson(Map<String, dynamic> json) =>
      _$InputUserPkColumnsInputFromJson(json);

  final String id;

  Map<String, dynamic> toJson() => _$InputUserPkColumnsInputToJson(this);
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputUserPkColumnsInput) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class InputUserSetInput {
  InputUserSetInput({this.age, this.companyName, this.fullName, this.id});

  @override
  factory InputUserSetInput.fromJson(Map<String, dynamic> json) =>
      _$InputUserSetInputFromJson(json);

  final int? age;

  final String? companyName;

  final String? fullName;

  final String? id;

  Map<String, dynamic> toJson() => _$InputUserSetInputToJson(this);
  int get hashCode {
    final l$age = age;
    final l$companyName = companyName;
    final l$fullName = fullName;
    final l$id = id;
    return Object.hashAll([l$age, l$companyName, l$fullName, l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputUserSetInput) || runtimeType != other.runtimeType)
      return false;
    final l$age = age;
    final lOther$age = other.age;
    if (l$age != lOther$age) return false;
    final l$companyName = companyName;
    final lOther$companyName = other.companyName;
    if (l$companyName != lOther$companyName) return false;
    final l$fullName = fullName;
    final lOther$fullName = other.fullName;
    if (l$fullName != lOther$fullName) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class InputUserUpdates {
  InputUserUpdates({this.$_inc, this.$_set, required this.where});

  @override
  factory InputUserUpdates.fromJson(Map<String, dynamic> json) =>
      _$InputUserUpdatesFromJson(json);

  @JsonKey(name: '_inc')
  final InputUserIncInput? $_inc;

  @JsonKey(name: '_set')
  final InputUserSetInput? $_set;

  final InputUserBoolExp where;

  Map<String, dynamic> toJson() => _$InputUserUpdatesToJson(this);
  int get hashCode {
    final l$$_inc = $_inc;
    final l$$_set = $_set;
    final l$where = where;
    return Object.hashAll([l$$_inc, l$$_set, l$where]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputUserUpdates) || runtimeType != other.runtimeType)
      return false;
    final l$$_inc = $_inc;
    final lOther$$_inc = other.$_inc;
    if (l$$_inc != lOther$$_inc) return false;
    final l$$_set = $_set;
    final lOther$$_set = other.$_set;
    if (l$$_set != lOther$$_set) return false;
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class InputuuidComparisonExp {
  InputuuidComparisonExp(
      {this.$_eq,
      this.$_gt,
      this.$_gte,
      this.$_in,
      this.$_is_null,
      this.$_lt,
      this.$_lte,
      this.$_neq,
      this.$_nin});

  @override
  factory InputuuidComparisonExp.fromJson(Map<String, dynamic> json) =>
      _$InputuuidComparisonExpFromJson(json);

  @JsonKey(name: '_eq')
  final String? $_eq;

  @JsonKey(name: '_gt')
  final String? $_gt;

  @JsonKey(name: '_gte')
  final String? $_gte;

  @JsonKey(name: '_in')
  final List<String>? $_in;

  @JsonKey(name: '_is_null')
  final bool? $_is_null;

  @JsonKey(name: '_lt')
  final String? $_lt;

  @JsonKey(name: '_lte')
  final String? $_lte;

  @JsonKey(name: '_neq')
  final String? $_neq;

  @JsonKey(name: '_nin')
  final List<String>? $_nin;

  Map<String, dynamic> toJson() => _$InputuuidComparisonExpToJson(this);
  int get hashCode {
    final l$$_eq = $_eq;
    final l$$_gt = $_gt;
    final l$$_gte = $_gte;
    final l$$_in = $_in;
    final l$$_is_null = $_is_null;
    final l$$_lt = $_lt;
    final l$$_lte = $_lte;
    final l$$_neq = $_neq;
    final l$$_nin = $_nin;
    return Object.hashAll([
      l$$_eq,
      l$$_gt,
      l$$_gte,
      l$$_in == null ? null : Object.hashAll(l$$_in.map((v) => v)),
      l$$_is_null,
      l$$_lt,
      l$$_lte,
      l$$_neq,
      l$$_nin == null ? null : Object.hashAll(l$$_nin.map((v) => v))
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is InputuuidComparisonExp) || runtimeType != other.runtimeType)
      return false;
    final l$$_eq = $_eq;
    final lOther$$_eq = other.$_eq;
    if (l$$_eq != lOther$$_eq) return false;
    final l$$_gt = $_gt;
    final lOther$$_gt = other.$_gt;
    if (l$$_gt != lOther$$_gt) return false;
    final l$$_gte = $_gte;
    final lOther$$_gte = other.$_gte;
    if (l$$_gte != lOther$$_gte) return false;
    final l$$_in = $_in;
    final lOther$$_in = other.$_in;
    if (l$$_in != null && lOther$$_in != null) {
      if (l$$_in.length != lOther$$_in.length) return false;
      for (int i = 0; i < l$$_in.length; i++) {
        final l$$_in$entry = l$$_in[i];
        final lOther$$_in$entry = lOther$$_in[i];
        if (l$$_in$entry != lOther$$_in$entry) return false;
      }
    } else if (l$$_in != lOther$$_in) {
      return false;
    }

    final l$$_is_null = $_is_null;
    final lOther$$_is_null = other.$_is_null;
    if (l$$_is_null != lOther$$_is_null) return false;
    final l$$_lt = $_lt;
    final lOther$$_lt = other.$_lt;
    if (l$$_lt != lOther$$_lt) return false;
    final l$$_lte = $_lte;
    final lOther$$_lte = other.$_lte;
    if (l$$_lte != lOther$$_lte) return false;
    final l$$_neq = $_neq;
    final lOther$$_neq = other.$_neq;
    if (l$$_neq != lOther$$_neq) return false;
    final l$$_nin = $_nin;
    final lOther$$_nin = other.$_nin;
    if (l$$_nin != null && lOther$$_nin != null) {
      if (l$$_nin.length != lOther$$_nin.length) return false;
      for (int i = 0; i < l$$_nin.length; i++) {
        final l$$_nin$entry = l$$_nin[i];
        final lOther$$_nin$entry = lOther$$_nin[i];
        if (l$$_nin$entry != lOther$$_nin$entry) return false;
      }
    } else if (l$$_nin != lOther$$_nin) {
      return false;
    }

    return true;
  }
}

enum EnumUserConstraint {
  @JsonValue('User_pkey')
  userPkey,
  $unknown
}

enum EnumUserSelectColumn {
  @JsonValue('age')
  age,
  @JsonValue('companyName')
  companyName,
  @JsonValue('fullName')
  fullName,
  @JsonValue('id')
  id,
  $unknown
}

enum EnumUserUpdateColumn {
  @JsonValue('age')
  age,
  @JsonValue('companyName')
  companyName,
  @JsonValue('fullName')
  fullName,
  @JsonValue('id')
  id,
  $unknown
}

enum EnumorderBy {
  @JsonValue('asc')
  asc,
  @JsonValue('asc_nulls_first')
  ascNullsFirst,
  @JsonValue('asc_nulls_last')
  ascNullsLast,
  @JsonValue('desc')
  desc,
  @JsonValue('desc_nulls_first')
  descNullsFirst,
  @JsonValue('desc_nulls_last')
  descNullsLast,
  $unknown
}

const POSSIBLE_TYPES_MAP = const {};
