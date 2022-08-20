// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mutation.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VariablesMutationCreateUser _$VariablesMutationCreateUserFromJson(
        Map<String, dynamic> json) =>
    VariablesMutationCreateUser(
      age: json['age'] as int,
      companyName: json['companyName'] as String,
      fullName: json['fullName'] as String,
    );

Map<String, dynamic> _$VariablesMutationCreateUserToJson(
        VariablesMutationCreateUser instance) =>
    <String, dynamic>{
      'age': instance.age,
      'companyName': instance.companyName,
      'fullName': instance.fullName,
    };

MutationCreateUser _$MutationCreateUserFromJson(Map<String, dynamic> json) =>
    MutationCreateUser(
      user: json['user'] == null
          ? null
          : MutationCreateUser$user.fromJson(
              json['user'] as Map<String, dynamic>),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationCreateUserToJson(MutationCreateUser instance) =>
    <String, dynamic>{
      'user': instance.user?.toJson(),
      '__typename': instance.$__typename,
    };

MutationCreateUser$user _$MutationCreateUser$userFromJson(
        Map<String, dynamic> json) =>
    MutationCreateUser$user(
      id: json['id'] as String,
      fullName: json['fullName'] as String,
      companyName: json['companyName'] as String,
      age: json['age'] as int,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$MutationCreateUser$userToJson(
        MutationCreateUser$user instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'companyName': instance.companyName,
      'age': instance.age,
      '__typename': instance.$__typename,
    };
