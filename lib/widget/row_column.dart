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
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    height: 70,
                    width: 150,
                    decoration: BoxDecoration(
                        boxShadow: [BoxShadow(blurRadius: 10)],
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(colors: [
                          Colors.green,
                          Colors.greenAccent,
                          Colors.blueGrey
                        ])),
                    child: const Text('Sunday...',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w600)),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    height: 70,
                    width: 150,
                    decoration: BoxDecoration(
                        boxShadow: [BoxShadow(blurRadius: 10)],
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(colors: [
                          Colors.green,
                          Colors.greenAccent,
                          Colors.blueGrey
                        ])),
                    child: const Text('Monday...',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    height: 70,
                    width: 150,
                    decoration: BoxDecoration(
                        boxShadow: [BoxShadow(blurRadius: 10)],
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(colors: [
                          Colors.green,
                          Colors.greenAccent,
                          Colors.blueGrey
                        ])),
                    child: const Text('Tuesday...',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w600)),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(18),
                    height: 70,
                    width: 150,
                    decoration: BoxDecoration(
                        boxShadow: [BoxShadow(blurRadius: 10)],
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(colors: [
                          Colors.green,
                          Colors.greenAccent,
                          Colors.blueGrey
                        ])),
                    child: const Text('Wednesday...',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
