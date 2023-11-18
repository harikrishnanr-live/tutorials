import 'dart:developer';

import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Learn Flutter"),
          centerTitle: true,
          backgroundColor: Colors.green,
          leading: Icon(Icons.home),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
          ],
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
          elevation: 20,
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
                      foregroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 146, 111, 6)),
                      backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 35, 76, 95))),
                  onPressed: () {},
                  child: Text("Elevated Button"))
            ],
          ),
        ));
  }
}
