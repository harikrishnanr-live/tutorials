// ignore_for_file: empty_constructor_bodies

import 'package:flutter/material.dart';
import './widgets/rowcolumn.dart';
import './widgets/buttonwidget.dart';
import './widgets/textwidget.dart';
import './widgets/cardwidget.dart';
import './widgets/stateful.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Demo-App",
      home: MyWidget(),
    );
  }
}