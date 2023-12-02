import 'package:flutter/material.dart';
import './../../widgets/mutiselect.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _selectedItems = [];
  List subjects = [
    {'id': 1, 'name': 'hari'},
    {'id': 2, 'name': 'krishnan'}
  ];

  void _showMultiSelect() async {
    // a list of selectable items
    // these items can be hard-coded or dynamically fetched from a database/API
    final List<String> items = [
      'Flutter',
      'Node.js',
      'React Native',
      'Java',
      'Docker',
      'MySQL'
    ];

    final List<String>? results = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return MultiSelect(items: items);
      },
    );

    // Update UI
    if (results != null) {
      setState(() {
        _selectedItems = results;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('dbestech'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ElevatedButton(
                  onPressed: _showMultiSelect,
                  child: const Text('Filter 1'),
                ),
                ElevatedButton(
                  onPressed: _showMultiSelect,
                  child: const Text('Filter 2 '),
                ),
              ],
            ),

            // display selected items
            // Wrap(
            //   children: _selectedItems
            //       .map((e) => Chip(
            //             label: Text(e),
            //           ))
            //       .toList(),
            // )

            const Divider(
              height: 30,
            ),
            Column(children: [
              for (var subject in subjects)
                const Column(children: [Card(
                elevation: 50,
                shadowColor: Colors.black,
                color: Colors.black,
                child: SizedBox(
                  height: 500,
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: <Widget>[
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
              )])
            ]),
          ],
        ),
      ),
    );
  }
}
