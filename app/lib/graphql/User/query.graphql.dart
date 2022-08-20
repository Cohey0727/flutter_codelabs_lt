import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:json_annotation/json_annotation.dart';
part 'query.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class QueryGetUsers {
  QueryGetUsers({required this.users, required this.$__typename});

  @override
  factory QueryGetUsers.fromJson(Map<String, dynamic> json) =>
      _$QueryGetUsersFromJson(json);

  final List<QueryGetUsers$users> users;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$QueryGetUsersToJson(this);
  int get hashCode {
    final l$users = users;
    final l$$__typename = $__typename;
    return Object.hashAll(
        [Object.hashAll(l$users.map((v) => v)), l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetUsers) || runtimeType != other.runtimeType)
      return false;
    final l$users = users;
    final lOther$users = other.users;
    if (l$users.length != lOther$users.length) return false;
    for (int i = 0; i < l$users.length; i++) {
      final l$users$entry = l$users[i];
      final lOther$users$entry = lOther$users[i];
      if (l$users$entry != lOther$users$entry) return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionQueryGetUsers on QueryGetUsers {
  QueryGetUsers copyWith(
          {List<QueryGetUsers$users>? users, String? $__typename}) =>
      QueryGetUsers(
          users: users == null ? this.users : users,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const QUERY_GET_USERS = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'GetUsers'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'User'),
            alias: NameNode(value: 'users'),
            arguments: [],
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
QueryGetUsers _parserFnQueryGetUsers(Map<String, dynamic> data) =>
    QueryGetUsers.fromJson(data);

class OptionsQueryGetUsers extends graphql.QueryOptions<QueryGetUsers> {
  OptionsQueryGetUsers(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            pollInterval: pollInterval,
            context: context,
            document: QUERY_GET_USERS,
            parserFn: _parserFnQueryGetUsers);
}

class WatchOptionsQueryGetUsers
    extends graphql.WatchQueryOptions<QueryGetUsers> {
  WatchOptionsQueryGetUsers(
      {String? operationName,
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
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: QUERY_GET_USERS,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnQueryGetUsers);
}

class FetchMoreOptionsQueryGetUsers extends graphql.FetchMoreOptions {
  FetchMoreOptionsQueryGetUsers({required graphql.UpdateQuery updateQuery})
      : super(updateQuery: updateQuery, document: QUERY_GET_USERS);
}

extension ClientExtensionQueryGetUsers on graphql.GraphQLClient {
  Future<graphql.QueryResult<QueryGetUsers>> queryGetUsers(
          [OptionsQueryGetUsers? options]) async =>
      await this.query(options ?? OptionsQueryGetUsers());
  graphql.ObservableQuery<QueryGetUsers> watchQueryGetUsers(
          [WatchOptionsQueryGetUsers? options]) =>
      this.watchQuery(options ?? WatchOptionsQueryGetUsers());
  void writeQueryGetUsers(
          {required QueryGetUsers data, bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(document: QUERY_GET_USERS)),
          data: data.toJson(),
          broadcast: broadcast);
  QueryGetUsers? readQueryGetUsers({bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: QUERY_GET_USERS)),
        optimistic: optimistic);
    return result == null ? null : QueryGetUsers.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<QueryGetUsers> useQueryGetUsers(
        [OptionsQueryGetUsers? options]) =>
    graphql_flutter.useQuery(options ?? OptionsQueryGetUsers());
graphql.ObservableQuery<QueryGetUsers> useWatchQueryGetUsers(
        [WatchOptionsQueryGetUsers? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptionsQueryGetUsers());

class QueryGetUsersWidget extends graphql_flutter.Query<QueryGetUsers> {
  QueryGetUsersWidget(
      {widgets.Key? key,
      OptionsQueryGetUsers? options,
      required graphql_flutter.QueryBuilder<QueryGetUsers> builder})
      : super(
            key: key,
            options: options ?? OptionsQueryGetUsers(),
            builder: builder);
}

@JsonSerializable(explicitToJson: true)
class QueryGetUsers$users {
  QueryGetUsers$users(
      {required this.id,
      required this.fullName,
      required this.age,
      required this.$__typename});

  @override
  factory QueryGetUsers$users.fromJson(Map<String, dynamic> json) =>
      _$QueryGetUsers$usersFromJson(json);

  final String id;

  final String fullName;

  final int age;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$QueryGetUsers$usersToJson(this);
  int get hashCode {
    final l$id = id;
    final l$fullName = fullName;
    final l$age = age;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$fullName, l$age, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryGetUsers$users) || runtimeType != other.runtimeType)
      return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$fullName = fullName;
    final lOther$fullName = other.fullName;
    if (l$fullName != lOther$fullName) return false;
    final l$age = age;
    final lOther$age = other.age;
    if (l$age != lOther$age) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionQueryGetUsers$users on QueryGetUsers$users {
  QueryGetUsers$users copyWith(
          {String? id, String? fullName, int? age, String? $__typename}) =>
      QueryGetUsers$users(
          id: id == null ? this.id : id,
          fullName: fullName == null ? this.fullName : fullName,
          age: age == null ? this.age : age,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}
