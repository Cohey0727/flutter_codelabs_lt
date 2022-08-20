import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
part 'mutation.graphql.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class VariablesMutationCreateUser {
  VariablesMutationCreateUser(
      {required this.age, required this.companyName, required this.fullName});

  @override
  factory VariablesMutationCreateUser.fromJson(Map<String, dynamic> json) =>
      _$VariablesMutationCreateUserFromJson(json);

  final int age;

  final String companyName;

  final String fullName;

  Map<String, dynamic> toJson() => _$VariablesMutationCreateUserToJson(this);
  int get hashCode {
    final l$age = age;
    final l$companyName = companyName;
    final l$fullName = fullName;
    return Object.hashAll([l$age, l$companyName, l$fullName]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is VariablesMutationCreateUser) ||
        runtimeType != other.runtimeType) return false;
    final l$age = age;
    final lOther$age = other.age;
    if (l$age != lOther$age) return false;
    final l$companyName = companyName;
    final lOther$companyName = other.companyName;
    if (l$companyName != lOther$companyName) return false;
    final l$fullName = fullName;
    final lOther$fullName = other.fullName;
    if (l$fullName != lOther$fullName) return false;
    return true;
  }
}

@JsonSerializable(explicitToJson: true)
class MutationCreateUser {
  MutationCreateUser({this.user, required this.$__typename});

  @override
  factory MutationCreateUser.fromJson(Map<String, dynamic> json) =>
      _$MutationCreateUserFromJson(json);

  final MutationCreateUser$user? user;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$MutationCreateUserToJson(this);
  int get hashCode {
    final l$user = user;
    final l$$__typename = $__typename;
    return Object.hashAll([l$user, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationCreateUser) || runtimeType != other.runtimeType)
      return false;
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionMutationCreateUser on MutationCreateUser {
  MutationCreateUser copyWith(
          {MutationCreateUser$user? Function()? user, String? $__typename}) =>
      MutationCreateUser(
          user: user == null ? this.user : user(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const MUTATION_CREATE_USER = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'CreateUser'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'age')),
            type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'companyName')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: []),
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'fullName')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'insert_User_one'),
            alias: NameNode(value: 'user'),
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'object'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'age'),
                        value: VariableNode(name: NameNode(value: 'age'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'companyName'),
                        value:
                            VariableNode(name: NameNode(value: 'companyName'))),
                    ObjectFieldNode(
                        name: NameNode(value: 'fullName'),
                        value: VariableNode(name: NameNode(value: 'fullName')))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'fullName'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'companyName'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'age'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
]);
MutationCreateUser _parserFnMutationCreateUser(Map<String, dynamic> data) =>
    MutationCreateUser.fromJson(data);
typedef OnMutationCompletedMutationCreateUser = FutureOr<void> Function(
    dynamic, MutationCreateUser?);

class OptionsMutationCreateUser
    extends graphql.MutationOptions<MutationCreateUser> {
  OptionsMutationCreateUser(
      {String? operationName,
      required VariablesMutationCreateUser variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationCreateUser? onCompleted,
      graphql.OnMutationUpdate<MutationCreateUser>? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(data,
                    data == null ? null : _parserFnMutationCreateUser(data)),
            update: update,
            onError: onError,
            document: MUTATION_CREATE_USER,
            parserFn: _parserFnMutationCreateUser);

  final OnMutationCompletedMutationCreateUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

class WatchOptionsMutationCreateUser
    extends graphql.WatchQueryOptions<MutationCreateUser> {
  WatchOptionsMutationCreateUser(
      {String? operationName,
      required VariablesMutationCreateUser variables,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      Duration? pollInterval,
      bool? eagerlyFetchResults,
      bool carryForwardDataOnException = true,
      bool fetchResults = false})
      : super(
            variables: variables.toJson(),
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: MUTATION_CREATE_USER,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnMutationCreateUser);
}

extension ClientExtensionMutationCreateUser on graphql.GraphQLClient {
  Future<graphql.QueryResult<MutationCreateUser>> mutateCreateUser(
          OptionsMutationCreateUser options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<MutationCreateUser> watchMutationCreateUser(
          WatchOptionsMutationCreateUser options) =>
      this.watchMutation(options);
}

class MutationCreateUserHookResult {
  MutationCreateUserHookResult(this.runMutation, this.result);

  final RunMutationMutationCreateUser runMutation;

  final graphql.QueryResult<MutationCreateUser> result;
}

MutationCreateUserHookResult useMutationCreateUser(
    [WidgetOptionsMutationCreateUser? options]) {
  final result =
      graphql_flutter.useMutation(options ?? WidgetOptionsMutationCreateUser());
  return MutationCreateUserHookResult(
    (variables, {optimisticResult}) => result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult,
    ),
    result.result,
  );
}

graphql.ObservableQuery<MutationCreateUser> useWatchMutationCreateUser(
        WatchOptionsMutationCreateUser options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptionsMutationCreateUser
    extends graphql.MutationOptions<MutationCreateUser> {
  WidgetOptionsMutationCreateUser(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      OnMutationCompletedMutationCreateUser? onCompleted,
      graphql.OnMutationUpdate<MutationCreateUser>? update,
      graphql.OnError? onError})
      : onCompletedWithParsed = onCompleted,
        super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            onCompleted: onCompleted == null
                ? null
                : (data) => onCompleted(data,
                    data == null ? null : _parserFnMutationCreateUser(data)),
            update: update,
            onError: onError,
            document: MUTATION_CREATE_USER,
            parserFn: _parserFnMutationCreateUser);

  final OnMutationCompletedMutationCreateUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed
      ];
}

typedef RunMutationMutationCreateUser
    = graphql.MultiSourceResult<MutationCreateUser>
        Function(VariablesMutationCreateUser, {Object? optimisticResult});
typedef BuilderMutationCreateUser = widgets.Widget Function(
    RunMutationMutationCreateUser, graphql.QueryResult<MutationCreateUser>?);

class MutationCreateUserWidget
    extends graphql_flutter.Mutation<MutationCreateUser> {
  MutationCreateUserWidget(
      {widgets.Key? key,
      WidgetOptionsMutationCreateUser? options,
      required BuilderMutationCreateUser builder})
      : super(
            key: key,
            options: options ?? WidgetOptionsMutationCreateUser(),
            builder: (run, result) => builder(
                (variables, {optimisticResult}) =>
                    run(variables.toJson(), optimisticResult: optimisticResult),
                result));
}

@JsonSerializable(explicitToJson: true)
class MutationCreateUser$user {
  MutationCreateUser$user(
      {required this.id,
      required this.fullName,
      required this.companyName,
      required this.age,
      required this.$__typename});

  @override
  factory MutationCreateUser$user.fromJson(Map<String, dynamic> json) =>
      _$MutationCreateUser$userFromJson(json);

  final String id;

  final String fullName;

  final String companyName;

  final int age;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$MutationCreateUser$userToJson(this);
  int get hashCode {
    final l$id = id;
    final l$fullName = fullName;
    final l$companyName = companyName;
    final l$age = age;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [l$id, l$fullName, l$companyName, l$age, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is MutationCreateUser$user) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$fullName = fullName;
    final lOther$fullName = other.fullName;
    if (l$fullName != lOther$fullName) return false;
    final l$companyName = companyName;
    final lOther$companyName = other.companyName;
    if (l$companyName != lOther$companyName) return false;
    final l$age = age;
    final lOther$age = other.age;
    if (l$age != lOther$age) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionMutationCreateUser$user on MutationCreateUser$user {
  MutationCreateUser$user copyWith(
          {String? id,
          String? fullName,
          String? companyName,
          int? age,
          String? $__typename}) =>
      MutationCreateUser$user(
          id: id == null ? this.id : id,
          fullName: fullName == null ? this.fullName : fullName,
          companyName: companyName == null ? this.companyName : companyName,
          age: age == null ? this.age : age,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}
