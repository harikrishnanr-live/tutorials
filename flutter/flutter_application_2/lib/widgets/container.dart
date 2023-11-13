import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter "),
        centerTitle: true,
        backgroundColor: Colors.amber,
        leading: Icon(Icons.home),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more))
        ],
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(10))),
        elevation: 30,
      ),
      body: Center(
          child: Container(
        // color: Colors.blue,
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        alignment: Alignment.topRight,
        decoration: BoxDecoration(
            color: Colors.green,
            border: Border.all(color: Colors.black, width: 10),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(color: Colors.blueGrey, offset: Offset(10, 20))
            ]),

        child: Text(
          "Hello World",
          style: TextStyle(fontSize: 30),
        ),
      )),
    );
  }
}
