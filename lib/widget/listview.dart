import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: listView(),
    );
  }
}

class listView extends StatefulWidget {
  const listView({super.key});

  @override
  State<listView> createState() => _listViewState();
}

class _listViewState extends State<listView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
          child: ListView(
        children: [
          Text(
            'Nikunj',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Nikunj',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Nikunj',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Nikunj',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Nikunj',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Nikunj',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Nikunj',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black),
          ),
        ],
      )),
    );
  }
}
