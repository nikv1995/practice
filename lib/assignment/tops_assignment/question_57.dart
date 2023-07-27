// create an application to change background when button is clicked


import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: colorchange(),
    );
  }
}

class colorchange extends StatefulWidget {
  const colorchange({Key? key}) : super(key: key);

  @override
  State<colorchange> createState() => _colorchangeState();
}

class _colorchangeState extends State<colorchange> {
  var index = 0;
  bool status = true;
  var colors = [
    Colors.red,
    Colors.orange,
    Colors.green,
    Colors.blue,
    Colors.purple,
    Colors.grey,
    Colors.amber,
    Colors.teal
  ];
  Color bgcolor = Colors.white;

  Bgcolor() {
    setState(() {
      if (status == true) {
        bgcolor = colors[index];
      }
      index++;
      if (index > 8) {
        index = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Bgcolor();
        },
        child: AnimatedContainer(
          duration: Duration(seconds: 2),
          height: double.infinity,
          width: double.infinity,
          color: bgcolor,
        ),
      ),
    );
  }
}
