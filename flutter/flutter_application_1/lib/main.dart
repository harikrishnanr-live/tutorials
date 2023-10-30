import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo App",
      home: Scaffold(
        body: Center(
          child: Text("Hello World",
          style: TextStyle(fontSize: 50))
        ),
      ),
    );
  }
}