import 'package:flutter/material.dart';
import './screens/login.dart';

void main() {
  runApp(Saloon());
}

class Saloon extends StatelessWidget {
  const Saloon({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Saloon",
      home: Login(),
    );
  }
}
