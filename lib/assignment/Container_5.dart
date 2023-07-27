import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            'Material App Bar',
          )),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.fromLTRB(14, 15, 10, 10),
            height: 100,
            width: 330,
            decoration: BoxDecoration(
                boxShadow: const [BoxShadow(blurRadius: 10)],
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(13)),
            child: const Text('Hello World',
                style: TextStyle(
                  fontSize: 37,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                )),
          ),
        ),
      ),
    );
  }
}

