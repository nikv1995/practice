import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: first_page(),
    );
  }
}

class first_page extends StatefulWidget {

  @override
  State<first_page> createState() => _first_pageState();
}

class _first_pageState extends State<first_page> {
  var _count = 0;

  void increment() {
    setState(() {
      _count++;
    });
  }

  void decrement() {
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Counter App',
              style: TextStyle(fontSize: 26, color: Colors.black)),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('This is my counter App ',
                  style: TextStyle(fontSize: 24, color: Colors.black)),
              SizedBox(
                height: 30,
              ),
              Text("Count = $_count",
                  style: TextStyle(color: Colors.black, fontSize: 30)),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  decrement();
                },
                child: Icon(Icons.exposure_minus_1),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  increment();
                },
                child: Icon(Icons.plus_one),
              ),
            ],
          ),
        ));
  }
}