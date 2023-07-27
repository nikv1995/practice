import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Material App Bar'),
          ),
          body: SizedBox(
            height: 500,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Icon(
                  Icons.access_alarms,
                  color: Colors.deepPurple,
                  size: 50,
                  weight: 50,
                ),
                Icon(
                  Icons.ac_unit,
                  color: Colors.deepOrange,
                  size: 50,
                  weight: 50,
                ),
                Icon(
                  Icons.accessibility_new,
                  color: Colors.yellow,
                  size: 50,
                  weight: 50,
                ),
                Icon(
                  Icons.account_balance_sharp,
                  color: Colors.blueAccent,
                  size: 50,
                  weight: 50,
                ),
              ],
            ),
          )),
    );
  }
}
