import 'package:flutter/material.dart';
import './pages/login.dart';

void main() {
  runApp(Femmar());
}

class Femmar extends StatelessWidget {
  const Femmar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Femmar",
      home: Login(),
    );
  }
}
