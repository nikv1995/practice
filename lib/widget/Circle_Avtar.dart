import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: CircleAvatar(
            radius: 150,
            backgroundImage: AssetImage('assets/images/pexels-lisa-fotios-12842477.jpg'),)
        ),
      ),
    );
  }
}
