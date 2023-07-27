import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: tryapp(),
    );
  }
}

class tryapp extends StatefulWidget {
  const tryapp({super.key});

  @override
  State<tryapp> createState() => _tryappState();
}

class _tryappState extends State<tryapp> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Container(
        height: h*.35,
        width: w,
        color: Colors.yellowAccent,
        padding: EdgeInsets.only(bottom:w*.1,right: w*.1,top: w*.4,left: w*.8),
        child: Text('hi',style: TextStyle(fontSize: w*.2)),
      ),
    );
  }
}
