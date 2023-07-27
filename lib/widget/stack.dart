import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Material App Bar'),
          ),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.yellow,
            child: Stack(
              children: [
                Positioned(
                  top: 50,
                  left: 100,
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.blueAccent,
                  ),
                ),
                Positioned(
                  left: 40,
                  top: 130,
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.redAccent,
                  ),
                ),
                Positioned(
                  left: 140,
                  top: 190,
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.greenAccent,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
