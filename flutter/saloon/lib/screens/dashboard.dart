import 'dart:developer';
import './layouts/topbar.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TopBar(
          title: Text('Dashboard'),
          appBar: AppBar(),
          widgets: <Widget>[Icon(Icons.more_vert)],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.red)),
                  onPressed: () {
                    log("clicked");
                  },
                  child: Text("Text Button")),
              TextButton.icon(
                style: ButtonStyle(
                    textStyle:
                        MaterialStateProperty.all(TextStyle(fontSize: 30))),
                onPressed: () {
                  log("icon clicked");
                },
                icon: Icon(Icons.home),
                label: Text("Sample"),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 146, 111, 6)),
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 35, 76, 95))),
                  onPressed: () {},
                  child: Text("Elevated Button"))
            ],
          ),
        ));
  }
}
