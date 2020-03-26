import 'package:flutter/material.dart';
import 'package:mobx_with_architecture/stores/app_store.dart';
import 'package:mobx_with_architecture/views/signup_page.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AppStore>(create: (_) => AppStore()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MobX with Architecture',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: SignUpPage(),
      ),
    );
  }
}
