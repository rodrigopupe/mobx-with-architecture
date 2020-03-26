import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_with_architecture/stores/app_store.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final store = Provider.of<AppStore>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome, ${store.name}"),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Observer(
          builder: (_) => Container(
            padding: const EdgeInsets.all(16.0),
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
                Image.network(store.picture),
                SizedBox(height: 16.0),
                Text("Hello, ${store.name}!!!"),
                SizedBox(height: 8.0),
                Text(store.email)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
