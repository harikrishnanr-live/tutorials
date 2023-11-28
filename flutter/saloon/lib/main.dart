import 'package:flutter/material.dart';
// import './screens/login.dart';
import './screens/homepage.dart';

void main() {
  runApp(const Saloon());
}

class Saloon extends StatelessWidget {
  const Saloon({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Saloon",
      home: HomePage(),
    );
  }
}
