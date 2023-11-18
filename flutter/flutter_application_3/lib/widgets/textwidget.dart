import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

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
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(children: const [
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("User Name"),
                  // labelText: "User Name",
                  hintText: "Enter Your User",
                  prefixIcon: Icon(Icons.verified_user),
                  helperText: "Enter Your Username or Email"),
              maxLength: 10,
              keyboardType: TextInputType.number,
            ),
          ]),
        ));
  }
}
