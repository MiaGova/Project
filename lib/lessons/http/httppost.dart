import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:http/http.dart' as http;
void main(List<String> args) {
  runApp(MaterialApp(
    home: Login(),
  ));
}

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String number = "", password = "";

  var _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
            key: _key,
            child: Column(
              children: [
                TextFormField(
                  onSaved: (val) {
                    number = val!;
                  },
                  validator: (val) {
                    if (!val!.startsWith("+993")) {
                      return "+993 basla";
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormField(
                  onSaved: (val) {
                    password = val!;
                  },
                  validator: (val) {
                    if (val!.length < 6) {
                      return "6 sany giriz";
                    } else {
                      return null;
                    }
                  },
                ),
                TextButton(
                    onPressed: () {
                      if (_key.currentState!.validate()) {
                        _key.currentState!.save();
                        postmethod(number, password);
                        setState(() {});
                      }
                    },
                    child: Text("GO TO THE BACKEND")),
                FutureBuilder(
                    future: postmethod(number, password),
                    builder: (context, AsyncSnapshot<bool> snap) {
                      if (snap.hasData) {
                        return snap.data!
                            ? Text("Dogru yazdynyz")
                            : Text("pasword yada number yamys");
                      } else {
                        return Container();
                      }
                    })
              ],
            )));
  }

  Future<bool> postmethod(String number, String password) async {
    final response = await http.post(
        Uri.parse("http://216.250.9.29:5003/users/login"),
        body: {"user_phone": number, "password": password});
    debugPrint(response.statusCode.toString());
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
}
