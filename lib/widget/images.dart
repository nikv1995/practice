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
          // child: Image.asset('assets/images/pexels-lisa-fotios-12842477.jpg')
          child: Image.network('https://images.pexels.com/photos/1542937/pexels-photo-1542937.jpeg?auto=compress&cs=tinysrgb&w=600'),
        ),
      ),
    );
  }
}
