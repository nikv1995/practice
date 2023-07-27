import 'package:flutter/material.dart';
import 'package:nikunj_project/logic/mediaquery_file.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: mq(),
    );
  }
}

class mq extends StatefulWidget {
  const mq({super.key});

  @override
  State<mq> createState() => _mqState();
}

class _mqState extends State<mq> {
  @override
  Widget build(BuildContext context) {
    MediaQuery_use.OnInit(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
          width: MediaQuery_use.w * .3,
          height: MediaQuery_use.h * .3,
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
