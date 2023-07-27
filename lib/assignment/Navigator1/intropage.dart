import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nikunj_project/assignment/Navigator/secondscreen.dart';

import 'firstscreen.dart';


void main() => runApp(myapp());

class myapp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Routes',
      home: introscreen(),
      routes: {
        '/a':(context) => firstscreen(),
        '/b':(context) => secondscreen(),
        '/c':(context) => introscreen(),
      },
    );
  }
}

class introscreen extends StatefulWidget {
  State<StatefulWidget> createState() => introscreenState();
}

class introscreenState extends State<introscreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'App bar',
        ),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context,'/a');
            },
            child: Text('click for first screen')),
      ),
    );
  }
}
