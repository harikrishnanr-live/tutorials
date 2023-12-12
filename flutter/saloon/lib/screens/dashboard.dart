import 'dart:developer';
import './layouts/topbar.dart';
import 'package:flutter/material.dart';
import './../../widgets/searchbar.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TopBar(
          title: const Text('Dashboard'),
          appBar: AppBar(),
          widgets: const <Widget>[Icon(Icons.more_vert)],
        ),
        body: Center(SearchBar()) 
      );
  }
}
