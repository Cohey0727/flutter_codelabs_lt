import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:graphql/client.dart';

String graphqlApiUrl = dotenv.get('GRAPHQL_API_URL');
String apiKey = dotenv.get('GRAPHQL_API_KEY');

class GqlManager {
  late GraphQLClient _client;
  GraphQLClient get client => _client;

  GqlManager() {
    _client = _createGraphQLClient();
  }

  refresh() {
    _client = _createGraphQLClient();
  }
}

final gqlManager = GqlManager();

GraphQLClient _createGraphQLClient() {
  final HttpLink httpLink = HttpLink(
    graphqlApiUrl,
    defaultHeaders: {
      'X-HASURA-ADMIN-SECRET': apiKey,
      'CONTENT-TYPE': 'application/json',
    },
  );
  final wsLink = WebSocketLink(
    httpToWs(graphqlApiUrl),
    config: SocketClientConfig(
      autoReconnect: true,
      headers: {
        'X-HASURA-ADMIN-SECRET': apiKey,
        'CONTENT-TYPE': 'application/json',
      },
    ),
  );
  final link = Link.split(
    (request) => request.isSubscription,
    wsLink,
    httpLink,
  );

  final client = GraphQLClient(
    link: link,
    cache: GraphQLCache(store: HiveStore()),
  );
  return client;
}

String httpToWs(String url) {
  if (url.startsWith('https://')) {
    return url.replaceFirst('https://', 'wss://');
  }
  return url.replaceFirst('http://', 'ws://');
}
