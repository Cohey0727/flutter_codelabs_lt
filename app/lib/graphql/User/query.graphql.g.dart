// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryGetUsers _$QueryGetUsersFromJson(Map<String, dynamic> json) =>
    QueryGetUsers(
      users: (json['users'] as List<dynamic>)
          .map((e) => QueryGetUsers$users.fromJson(e as Map<String, dynamic>))
          .toList(),
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$QueryGetUsersToJson(QueryGetUsers instance) =>
    <String, dynamic>{
      'users': instance.users.map((e) => e.toJson()).toList(),
      '__typename': instance.$__typename,
    };

QueryGetUsers$users _$QueryGetUsers$usersFromJson(Map<String, dynamic> json) =>
    QueryGetUsers$users(
      id: json['id'] as String,
      fullName: json['fullName'] as String,
      age: json['age'] as int,
      $__typename: json['__typename'] as String,
    );

Map<String, dynamic> _$QueryGetUsers$usersToJson(
        QueryGetUsers$users instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'age': instance.age,
      '__typename': instance.$__typename,
    };
