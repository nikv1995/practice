import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: switchbutton(),
    );
  }
}

class switchbutton extends StatefulWidget {
  const switchbutton({Key? key}) : super(key: key);

  @override
  State<switchbutton> createState() => _switchbuttonState();
}

class _switchbuttonState extends State<switchbutton> {
  bool switchtap = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Switch(activeColor: Colors.red,
          value: switchtap,
          onChanged: (value) {
            setState(() {
              switchtap = value;
              print('$switchtap');
            });
          },
        ),
      ),
    );
  }
}
