import 'dart:convert';
// import 'dart:developer';
// import 'dart:io';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:saloon/screens/dashboard.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  get icon => null;
  final storage = const FlutterSecureStorage();

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> onLogin() async {
    final username = usernameController.text;
    final password = passwordController.text;

    final body = {"username": username, "password": password};

    final response = await http.post(
        Uri.parse('https://dummyjson.com/auth/login'),
        body: jsonEncode(body),
        headers: {'Content-Type': 'application/json'});
    if (response.statusCode == 200) {
      // ignore: use_build_context_synchronously
      final Map<String, dynamic> data = json.decode(response.body);
      await storage.write(key: 'token', value: data['token']);
      // ignore: use_build_context_synchronously
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Dashboard()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My Saloon"),
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
                  const SizedBox(
                    height: 8.0,
                  ),
                  Column(
                    children: <Widget>[
                      TextField(
                        controller: usernameController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter a search term',
                        ),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      TextField(
                        controller: passwordController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter a search term',
                        ),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          onLogin();
                        },
                        style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(255, 246, 246, 246)),
                            backgroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(255, 35, 76, 95))),
                        icon: const Icon(Icons.login),
                        label: const Text("Login"),
                      ),
                    ],
                  ),
                ],
              )),
        ]));
  }
}
