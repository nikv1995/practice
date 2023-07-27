import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orangeAccent,
            title: Center(
                child: Text('Calculator',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w800))),
          ),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.all(12),
            child: Wrap(
              children: [
                Container(
                  height: 180,
                  width: double.infinity,
                ),
                Container(
                  height: 470,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 72,
                            width: 75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.orangeAccent,
                            ),
                            child: Text('AC',
                                style: TextStyle(
                                    fontSize: 38, fontWeight: FontWeight.w900)),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 72,
                            width: 75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.orangeAccent,
                            ),
                            child: Text('+/-',
                                style: TextStyle(
                                    fontSize: 38, fontWeight: FontWeight.w900)),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 72,
                            width: 75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.orangeAccent,
                            ),
                            child: Text('%',
                                style: TextStyle(
                                    fontSize: 38, fontWeight: FontWeight.w900)),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 72,
                            width: 75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.orangeAccent,
                            ),
                            child: Text('/',
                                style: TextStyle(
                                    fontSize: 38, fontWeight: FontWeight.w900)),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 72,
                            width: 75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.orangeAccent,
                            ),
                            child: Text('7',
                                style: TextStyle(
                                    fontSize: 38, fontWeight: FontWeight.w900)),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 72,
                            width: 75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.orangeAccent,
                            ),
                            child: Text('8',
                                style: TextStyle(
                                    fontSize: 38, fontWeight: FontWeight.w900)),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 72,
                            width: 75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.orangeAccent,
                            ),
                            child: Text('9',
                                style: TextStyle(
                                    fontSize: 38, fontWeight: FontWeight.w900)),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 72,
                            width: 75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.orangeAccent,
                            ),
                            child: Text('*',
                                style: TextStyle(
                                    fontSize: 38, fontWeight: FontWeight.w900)),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 72,
                            width: 75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.orangeAccent,
                            ),
                            child: Text('4',
                                style: TextStyle(
                                    fontSize: 38, fontWeight: FontWeight.w900)),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 72,
                            width: 75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.orangeAccent,
                            ),
                            child: Text('5',
                                style: TextStyle(
                                    fontSize: 38, fontWeight: FontWeight.w900)),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 72,
                            width: 75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.orangeAccent,
                            ),
                            child: Text('6',
                                style: TextStyle(
                                    fontSize: 38, fontWeight: FontWeight.w900)),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 72,
                            width: 75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.orangeAccent,
                            ),
                            child: Text('-',
                                style: TextStyle(
                                    fontSize: 38, fontWeight: FontWeight.w900)),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 72,
                            width: 75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.orangeAccent,
                            ),
                            child: Text('1',
                                style: TextStyle(
                                    fontSize: 38, fontWeight: FontWeight.w900)),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 72,
                            width: 75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.orangeAccent,
                            ),
                            child: Text('2',
                                style: TextStyle(
                                    fontSize: 38, fontWeight: FontWeight.w900)),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 72,
                            width: 75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.orangeAccent,
                            ),
                            child: Text('3',
                                style: TextStyle(
                                    fontSize: 38, fontWeight: FontWeight.w900)),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 72,
                            width: 75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.orangeAccent,
                            ),
                            child: Text('+',
                                style: TextStyle(
                                    fontSize: 38, fontWeight: FontWeight.w900)),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 72,
                            width: 170,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.orangeAccent,
                            ),
                            child: Text('0',
                                style: TextStyle(
                                    fontSize: 38, fontWeight: FontWeight.w900)),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 72,
                            width: 75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.orangeAccent,
                            ),
                            child: Text('.',
                                style: TextStyle(
                                    fontSize: 38, fontWeight: FontWeight.w900)),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 72,
                            width: 75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.orangeAccent,
                            ),
                            child: Text('=',
                                style: TextStyle(
                                    fontSize: 38, fontWeight: FontWeight.w900)),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
