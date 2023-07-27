import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: animated_container(),
    );
  }
}

class animated_container extends StatefulWidget {
  const animated_container({super.key});

  @override
  State<animated_container> createState() => _animated_containerState();
}

class _animated_containerState extends State<animated_container> {
  double Container_height = 300;
  double Container_width = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AnimatedContainer(
              height: Container_height,
              width: Container_width,
              duration: Duration(seconds: 1),
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.red,
                Colors.green,
                Colors.blue,
                Colors.yellowAccent,
                Colors.grey
              ])),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    Container_height = Random().nextInt(300).toDouble();
                    Container_width = Random().nextInt(300).toDouble();
                  });
                },
                child: Text('Click Here'))
          ],
        ),
      ),
    );
  }
}
