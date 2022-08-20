import 'package:example/graphql.dart';
import 'package:example/graphql/User/query.graphql.dart';
import 'package:example/graphql/User/mutation.graphql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

typedef User = QueryGetUsers$users;
void main() async {
  await initHiveForFlutter();
  await dotenv.load();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<User>? users;
  final fullNameController = TextEditingController();
  final companyNameController = TextEditingController();
  final ageController = TextEditingController();

  @override
  void initState() {
    super.initState();
    fetchUsers();
  }

  Future fetchUsers() async {
    final res = await gqlManager.client.queryGetUsers(OptionsQueryGetUsers(
      fetchPolicy: FetchPolicy.noCache,
    ));
    setState(() => users = res.parsedData!.users);
  }

  Future createUser({
    required String fullName,
    required int age,
    required String companyName,
  }) async {
    gqlManager.client.mutateCreateUser(OptionsMutationCreateUser(
      variables: VariablesMutationCreateUser(
        fullName: fullName,
        age: age,
        companyName: companyName,
      ),
    ));
  }

  void resetText() {
    fullNameController.text = '';
    companyNameController.text = '';
    ageController.text = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('名前'),
                  TextField(controller: fullNameController),
                  const SizedBox(height: 16),
                  const Text('会社'),
                  TextField(controller: companyNameController),
                  const SizedBox(height: 16),
                  const Text('年齢'),
                  TextField(controller: ageController),
                  OutlinedButton(
                    child: const Text('作成'),
                    onPressed: () async {
                      await createUser(
                        fullName: fullNameController.text,
                        age: int.tryParse(ageController.text) ?? 20,
                        companyName: companyNameController.text,
                      );
                      resetText();
                      fetchUsers();
                    },
                  )
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Builder(
                builder: (_) {
                  if (users == null) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (users!.isEmpty) {
                    return const Center(child: Text('No users found'));
                  }
                  return ListView(
                    children: users!.map((user) {
                      return ListTile(
                        title: Text('名前:${user.fullName}'),
                        trailing: Text('年齢:${user.age}歳'),
                      );
                    }).toList(),
                  );
                },
              ),
            )
          ],
        ));
  }
}
