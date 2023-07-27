import 'package:flutter/material.dart';

import '../logic/checkbox.dart';
import '../logic/random_number.dart';
import '../try/radio_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: bottom_navigation(),
    );
  }
}

class bottom_navigation extends StatefulWidget {
  const bottom_navigation({super.key});

  @override
  State<bottom_navigation> createState() => _bottom_navigationState();
}

class _bottom_navigationState extends State<bottom_navigation> {
  int select_index = 0;
  List<Widget> items = [checkbox(), radio(), random_()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Container(
          child: items.elementAt(select_index),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.amber,
          elevation: 20,
          currentIndex: select_index,
          onTap: (value) {
            setState(() {
              select_index = value;
            });
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.check_box), label: 'checkbox'),
            BottomNavigationBarItem(
                icon: Icon(Icons.radio_button_checked), label: 'radiobutton'),
            BottomNavigationBarItem(
                icon: Icon(Icons.numbers), label: 'random number')
          ]),
    );
  }
}
