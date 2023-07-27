import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nikunj_project/assignment/Navigator/secondscreen.dart';

class firstscreen extends StatefulWidget {
  State<StatefulWidget> createState() => firstscreenState();
}

class firstscreenState extends State<firstscreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First screen'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => secondscreen(),
                  ));
            },
            child: Text('click here for second page')),
      ),
    );
  }
}
