import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'firstscreen.dart';

class secondscreen extends StatefulWidget {
  State<StatefulWidget> createState() => secondscreenState();
}

class secondscreenState extends State<secondscreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second screen'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/c');
            },
            child: Text('click here for previous page')),
      ),
    );
  }
}
