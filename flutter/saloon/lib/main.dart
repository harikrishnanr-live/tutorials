import 'package:flutter/material.dart';
import 'package:saloon/screens/dashboard.dart';
// import './screens/login.dart';
import './screens/homepage/homepage.dart';

void main() {
  runApp(const Saloon());
}

class Saloon extends StatelessWidget {
  const Saloon({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Saloon",
      home: Dashboard(),
    );
  }
}
