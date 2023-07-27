// Write a program you have take three seek bar controls. From three Seekbar which Seekbar
// value changed the background color of device will be changed.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: slider(),
    );
  }
}

class slider extends StatefulWidget {
  const slider({Key? key}) : super(key: key);

  @override
  State<slider> createState() => _sliderState();
}

class _sliderState extends State<slider> {
  double red = 0;
  double green = 0;
  double blue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color.fromRGBO(red.toInt(), green.toInt(), blue.toInt(), 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Move slider to change background color',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Flexible(
                  child: Slider(
                    activeColor: Colors.red,
                    max: 100,
                    min: 0,
                    value: red,
                    onChanged: (value) {
                      setState(() {
                        red = value;
                      });
                    },
                  ),
                ),
                Flexible(
                  child: Slider(
                    activeColor: Colors.green,
                    value: green,
                    min: 0,
                    max: 100,
                    onChanged: (value) {
                      setState(() {
                        green = value;
                      });
                    },
                  ),
                ),
                Flexible(
                  child: Slider(
                    max: 100,
                    min: 0,
                    activeColor: Colors.blue,
                    value: blue,
                    onChanged: (value) {
                      setState(() {
                        blue = value;
                      });
                    },
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
