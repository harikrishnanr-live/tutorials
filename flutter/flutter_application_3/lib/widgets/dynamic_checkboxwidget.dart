import 'package:flutter/material.dart';

class DynamicCheckbox extends StatefulWidget {
  const DynamicCheckbox({super.key});

  @override
  State<DynamicCheckbox> createState() => _DynamicCheckboxState();
}

class _DynamicCheckboxState extends State<DynamicCheckbox> {
  List<Map> subjects = [
    {"title": "Option 2 ", "subTitle": "Description", "isSelected": false},
    {"title": "Option ", "subTitle": "Description", "isSelected": false},
    {"title": "Option ", "subTitle": "Description", "isSelected": false},
    {"title": "Option ", "subTitle": "Description", "isSelected": false},
    {"title": "Option ", "subTitle": "Description", "isSelected": false},
  ];

  List<String> strings123 = [];

  void addData(sub){
    strings123.add(sub);
    print(strings123);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Check Box ListTile Example"),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Hello",
                    style: TextStyle(fontSize: 10),
                  ),
                  const SizedBox(height: 10),
                  const Divider(),
                  const SizedBox(height: 10),
                  Column(children: subjects.map((subject){
                    return CheckboxListTile(
                      value: subject["isSelected"],
                      title: Text(subject["title"]),
                      onChanged: (newValue){
                        setState(() {
                          subject["isSelected"] = newValue;
                        });
                      });
                  }).toList()),
                  ElevatedButton(onPressed: (){
                    subjects.map((subj) => {
                      if(subj["checked"] == true){
                        addData(subj)
                      }
                    });
                  }, child: Text("Button"))
                ],
              )),
        ));
  }
}

class Data {}
