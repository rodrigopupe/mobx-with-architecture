import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobx_with_architecture/controllers/signup_controller.dart';
import 'package:mobx_with_architecture/stores/app_store.dart';
import 'package:mobx_with_architecture/viewmodels/signup_viewmodel.dart';
import 'package:mobx_with_architecture/views/home_page.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final _controller = SignUpController();
  final _viewModel = SignUpViewModel();

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<AppStore>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('SignUp'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Text('Create your account'),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "Name",
                    labelStyle: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Invalid name";
                    }

                    return null;
                  },
                  onSaved: (value) {
                    _viewModel.name = value;
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "E-mail",
                    labelStyle: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Invalid e-mail";
                    }

                    return null;
                  },
                  onSaved: (value) {
                    _viewModel.email = value;
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Invalid password";
                    }

                    return null;
                  },
                  onSaved: (value) {
                    _viewModel.password = value;
                  },
                ),
                SizedBox(height: 16.0),
                _viewModel.busy
                    ? Center(
                        child: Container(
                          child: CircularProgressIndicator(),
                        ),
                      )
                    : FlatButton(
                        color: Theme.of(context).primaryColor,
                        textColor: Colors.white,
                        child: Text("Register"),
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            _formKey.currentState.save();

                            setState(() {});
                            _controller.create(_viewModel).then((user) {
                              setState(() {});
                              print("New user: ${user.toJson()}");

                              store.setUser(user.name, user.email, user.picture, user.token);
                              
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => HomePage(),
                                ),
                              );
                            });
                          }
                        },
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
