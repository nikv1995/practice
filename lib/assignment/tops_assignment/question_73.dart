// Write a code to display edit, view, delete options with context menu in listview and
// also perform respective operation on user's choice

import 'package:flutter/material.dart';

void main() => runApp(MyApp())

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: contact(),
    );
  }
}

class contact extends StatefulWidget {
  const contact({super.key});

  @override
  State<contact> createState() => _contactState();
}

class _contactState extends State<contact> {
  List name = [
    [
      'Nikunj',
      'Vekariya',
      Colors.purpleAccent,
    ],
    [
      'Darshan',
      'Gondaliya',
      Colors.yellowAccent,
    ],
    [
      'Virat',
      'Kohli',
      Colors.pink,
    ],
    ['Tushar', 'Moradiya', Colors.green]
  ];
  List color = [
    Colors.purpleAccent,
    Colors.yellowAccent,
    Colors.pink,
    Colors.green
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
          child: Padding(
        padding: EdgeInsets.all(15),
        child: ListView.builder(
            itemCount: name.length,
            itemBuilder: (context, index) => ListTile(
                  tileColor:name[index][2],
                  leading: Icon(Icons.person),
                  title: Text(name[index][0]),
                  subtitle: Text(name[index][1]),
                  trailing: PopupMenuButton(
                    itemBuilder: (context) {
                      return [
                        PopupMenuItem(
                          child: Text('edit'),
                        ),
                        PopupMenuItem(
                          child: Text('view'),
                        ),
                        PopupMenuItem(
                          child: Text('delet'),
                        ),
                      ];
                    },
                  ),
                )),
      )),
    );
  }
}
