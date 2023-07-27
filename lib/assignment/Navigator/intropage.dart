import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'firstscreen.dart';


void main() => runApp(myapp());

class myapp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Routes',
      home: introscreen(),
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
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => firstscreen(),
                  ));
            },
            child: Text('click for first screen')),
      ),
    );
  }
}
