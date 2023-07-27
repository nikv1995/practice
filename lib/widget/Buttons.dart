import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          // child: TextButton(
          //   onPressed: () {
          //     print('Button Pressed');
          //   },
          //   onLongPress: () {
          //     print('Long Pressed');
          //   },
          //   child: Text('Click here'),
          // ),
          // child: ElevatedButton(
          //   style: ButtonStyle(elevation: MaterialStatePropertyAll(10)),
          //   onPressed: () {
          //     print('Button pressed');
          //   },
          //   onLongPress: () {
          //     print('Long pressed');
          //   },
          //   child: Text('Press here.'),
          // ),
          child: OutlinedButton(
            onPressed: () {
              print('Button pressed');
            },
            onLongPress: () {
              print('Long pressed');
            },
            child: Text('Press here.'),
          ),
        ),
      ),
    );
  }
}
