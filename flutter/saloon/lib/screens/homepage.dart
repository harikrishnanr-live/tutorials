import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  List<String> _selectedItems = [];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _showMutliSelect() async{
    final List<String> items =[
      'Flutter',
      'Nodejs'
    ];
  }

  // final List<String>? results = await showDialog(context: context, builder: (BuildContext context){
  //   return const Text("Hi");
  // });

  // if(results != null){
  //   setState(() {
  //     _selectedItems = results;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Saloon'),
        centerTitle: true,
      ),
      body: const Column(
        children: <Widget>[
          Column(children: [
            // ElevatedButton(onPressed: _showMutliSelect, child: child)
            // https://pub.dev/packages/multi_dropdown
          ],),
          Column(children: [
            Card(
              elevation: 50,
              shadowColor: Colors.black,
              color: Colors.black,
              child: SizedBox(
                height: 500,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 108,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://media.geeksforgeeks.org/wp-content/uploads/20210101144014/gfglogo.png"), //NetworkImage
                          radius: 100,
                        ), //CircleAvatar
                      ), //CircleAvatar
                      SizedBox(
                        height: 10,
                      ), //SizedBox
                      Text(
                        'GeeksforGeeks',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.green,
                          fontWeight: FontWeight.w500,
                        ), //Textstyle
                      ), //Text
                      SizedBox(
                        height: 10,
                      ), //SizedBox
                      Text(
                        'GeeksforGeeks is a computer science portal for geeks at geeksforgeeks.org. It contains well written, well thought and well explained computer science and programming articles, quizzes, projects, interview experiences and much more!!',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.green,
                        ), //Textstyle
                      ), //Text
                      SizedBox(
                        height: 10,
                      ), //SizedBox
                      SizedBox(
                        width: 100,
                      ) //SizedBox
                    ],
                  ), //Column
                ), //Padding
              ), //SizedBox
            )
          ]),
          //Card//Card
        ],
      ),
    );
  }
}

// class MutliSelect extends StatelessWidget{
//   const MutliSelect({Key? key}) : super(key: key);
// }
