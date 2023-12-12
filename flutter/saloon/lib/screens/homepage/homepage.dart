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
    Size size = MediaQuery.of(context).size;
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
            ListViewDetails()
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class ListViewDetails extends StatelessWidget {
  List users = [
    {
      'name':
          'Consequat ac felis donec et. Et netus et malesuada fames ac. Sit amet aliquam id diam maecenas ultricies. Sem nulla pharetra diam sit amet nisl. Mauris vitae ultricies leo integer malesuada nunc vel risus. Nec ullamcorper sit amet risus nullam. Iaculis nunc sed augue lacus viverra vitae congue eu consequat. Ultricies leo integer malesuada nunc. Tempor nec feugiat nisl pretium fusce id. Id diam maecenas ultricies mi eget. Semper auctor neque vitae tempus quam. Sit amet justo donec enim diam vulputate. Adipiscing commodo elit at imperdiet dui accumsan sit. Ipsum a arcu cursus vitae congue mauris. Est pellentesque elit ullamcorper dignissim. Adipiscing tristique risus nec feugiat in. Scelerisque varius morbi enim nunc faucibus a pellentesque sit amet. Aenean pharetra magna ac placerat vestibulum lectus. Consequat interdum varius sit amet mattis vulputate enim.',
      'age': '30'
    },
    {
      'name':
          'Dui faucibus in ornare quam. Ante in nibh mauris cursus mattis. Odio tempor orci dapibus ultrices in iaculis nunc sed. Id aliquet lectus proin nibh nisl condimentum id venenatis. Velit aliquet sagittis id consectetur. Fermentum dui faucibus in ornare quam viverra orci sagittis eu. Pretium lectus quam id leo in vitae turpis massa. Cursus in hac habitasse platea dictumst quisque sagittis purus. Et egestas quis ipsum suspendisse ultrices gravida dictum. Dolor magna eget est lorem. Id semper risus in hendrerit gravida rutrum quisque. Elementum sagittis vitae et leo duis ut diam quam nulla. Fermentum iaculis eu non diam phasellus vestibulum lorem. Arcu dui vivamus arcu felis bibendum.',
      'age': '25'
    },
    {
      'name':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      'age': '25'
    }
  ];

  ListViewDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: SingleChildScrollView( child: GridView.builder(
        shrinkWrap: true,
        primary: true,
        itemCount: 120,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Text('item $index'),
          );
        },
      )),
    );
  }
}
