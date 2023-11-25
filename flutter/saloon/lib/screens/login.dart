import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  get icon => null;

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> onLogin() async {
    final username = usernameController.text;
    final password = passwordController.text;

    final body = {"username": username, "password": password};

    final response = await http.post(
        Uri.parse('https://dummyjson.com/auth/login'),
        body: jsonEncode(body), headers: {
          'Content-Type': 'application/json'
        });
    if(response.statusCode == 200){

    }
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My Lab"),
          centerTitle: true,
        ),
        body: ListView(children: <Widget>[
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Column(children: <Widget>[
                    Image.network('https://www.tutorialkart.com/img/lion.jpg')
                  ]),
                  SizedBox(
                    height: 8.0,
                  ),
                  Column(
                    children: <Widget>[
                      TextField(
                        controller: usernameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter a search term',
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      TextField(
                        controller: passwordController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter a search term',
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            onLogin();
                          },
                          child: Text("Button"))
                    ],
                  ),
                ],
              )),
        ]));
  }
}
