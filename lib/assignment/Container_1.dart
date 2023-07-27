import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Home Page'),
        ),
        body: Center(
          child: Center(
            child: Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      spreadRadius: 20,
                      blurStyle: BlurStyle.outer,
                      color: Colors.black,
                      blurRadius: 20)
                ],
              ),
              child: const Text('Hello World', style: TextStyle(fontSize: 20)),
            ),
          ),
        ),
      ),
    );
  }
}
