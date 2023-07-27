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
          body: Container(
            height: double.infinity,
            width: double.infinity,
            child: Wrap(
              spacing: 30,
              runSpacing: 30,
              direction: Axis.horizontal,
              alignment: WrapAlignment.center,
              children: [
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.greenAccent,
                ),
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.green,
                ),
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.redAccent,
                ),
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.blueAccent,
                ),
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.yellow,
                ),
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.grey,
                ),
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.cyan,
                ),
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.deepOrangeAccent,
                ),
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.brown,
                ),
              ],
            ),
          )),
    );
  }
}
