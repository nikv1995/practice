import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Container App'),
        ),
        body: Center(
          child: Container(
            width: double.infinity,
            height: 80,
            decoration: const BoxDecoration(color: Colors.red),
            alignment: Alignment.center,
            child: const Text('Welcome to Code the Best',
                style: TextStyle(fontSize: 15, color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
