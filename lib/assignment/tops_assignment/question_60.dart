// create an application to display Textview when checkbox is checked and hide otherwise

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: textshow(),
    );
  }
}

class textshow extends StatefulWidget {
  const textshow({Key? key}) : super(key: key);

  @override
  State<textshow> createState() => _textshowState();
}

class _textshowState extends State<textshow> {
  bool ischecked = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'CheckboxShow',
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
      )),
      body: Column(
        children: [
          CheckboxListTile(
            title: Text('Text hide and show',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
            value: ischecked,
            onChanged: (value) {
              setState(() {
                ischecked = value!;
              });
            },
          ),
          SizedBox(
            height: 25,
          ),
          Visibility(
              visible: ischecked,
              child: Text(
                'Hello How are you',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
              ))
        ],
      ),
    );
  }
}
