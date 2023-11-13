import 'package:flutter/material.dart';

void main() {
  runApp(Femmar());
}

class Femmar extends StatelessWidget {
  const Femmar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Femmar",
        home: Scaffold(
            appBar: AppBar(
              title: Image.asset('assets/images/femmar.png'),
              centerTitle: true,
            ),
            body: Center(
              child: Column(children: <Widget>[
                Image.network(
                    'https://dev.sixweek.femmar.com/static/media/week0.c80fb757ec46a80d97b7.jpg'),
                Text("Login"),
                TextField(
  decoration: InputDecoration(
    border: OutlineInputBorder(),
    hintText: 'Enter a search term',
  ),
),TextField(
  decoration: InputDecoration(
    border: OutlineInputBorder(),
    hintText: 'Enter a search term',
  ),
),TextButton(
  style: TextButton.styleFrom(
    primary: Colors.blue,
  ),
  onPressed: () { },
  child: Text('TextButton'),
)

              ]),
            )));
  }
}
