/* Create an application with bottom navigation with 3 tabs Gallery, audio and video
and design each page with dummy data */

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: bottom_bar(),
    );
  }
}

class bottom_bar extends StatefulWidget {
  const bottom_bar({super.key});

  @override
  State<bottom_bar> createState() => _bottom_barState();
}

class _bottom_barState extends State<bottom_bar> {
  int selected_index = 0;
  List Item = ['Gallary', 'Audio', 'Video'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Material App Bar', style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Container(
          child: Text(Item.elementAt(selected_index)),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selected_index,
          backgroundColor: Colors.black,
          elevation: 10,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.white,
          selectedFontSize: 20,
          unselectedFontSize: 17,
          onTap: (value) {
            setState(() {
              selected_index = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.browse_gallery), label: 'Gallary'),
            BottomNavigationBarItem(
                icon: Icon(Icons.audiotrack), label: 'Audio'),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_file), label: 'Video'),
          ]),
    );
  }
}
