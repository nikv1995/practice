import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(myapp());

class myapp extends StatefulWidget {
  State<StatefulWidget> createState() => homepage();
}

class homepage extends State<myapp> {
  var count = 0;

  void incre() {
    setState(() {
      count++;
    });
  }

  void decre() {
    setState(() {
      count--;
    });
  }

  void reset() {
    setState(() {
      count = 0;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark(),
        title: 'CounterApp',
        home: Scaffold(
          appBar: AppBar(title: Text('Counter App')),
          body: Center(
            child: Container(
              height: 300,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        incre();
                      },
                      child: Text(
                        '+',
                        style: TextStyle(fontSize: 30),
                      )),
                  Text('$count', style: TextStyle(fontSize: 30)),
                  ElevatedButton(
                      onPressed: () {
                        decre();
                      },
                      child: Text(
                        '-',
                        style: TextStyle(fontSize: 30),
                      )),
                  SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        reset();
                      },
                      child: Text('RESET'))
                ],
              ),
            ),
          ),
        ));
  }
}
