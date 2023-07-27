import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Center(
                child: Text('Working Calculator',
                    style: TextStyle(color: Colors.black, fontSize: 23))),
          ),
          body: Wrap(
            children: [
              Container(
                height: 300,
                width: double.infinity,
              ),
              Container(
                height: 350,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.orangeAccent,
                              boxShadow: [
                                BoxShadow(blurRadius: 5, offset: Offset(1, 1))
                              ]),
                          child: Text('AC',
                              style: TextStyle(
                                  fontSize: 27, fontWeight: FontWeight.w500)),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.orangeAccent,
                              boxShadow: [
                                BoxShadow(blurRadius: 5, offset: Offset(1, 1))
                              ]),
                          child: Text('+',
                              style: TextStyle(
                                  fontSize: 27, fontWeight: FontWeight.w500)),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.orangeAccent,
                              boxShadow: [
                                BoxShadow(blurRadius: 5, offset: Offset(1, 1))
                              ]),
                          child: Text('-',
                              style: TextStyle(
                                  fontSize: 27, fontWeight: FontWeight.w500)),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.orangeAccent,
                              boxShadow: [
                                BoxShadow(blurRadius: 5, offset: Offset(1, 1))
                              ]),
                          child: Text('/',
                              style: TextStyle(
                                  fontSize: 27, fontWeight: FontWeight.w500)),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.blueGrey,
                              boxShadow: [
                                BoxShadow(blurRadius: 5, offset: Offset(1, 1))
                              ]),
                          child: Text('7',
                              style: TextStyle(
                                  fontSize: 27, fontWeight: FontWeight.w500)),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.blueGrey,
                              boxShadow: [
                                BoxShadow(blurRadius: 5, offset: Offset(1, 1))
                              ]),
                          child: Text('8',
                              style: TextStyle(
                                  fontSize: 27, fontWeight: FontWeight.w500)),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.blueGrey,
                              boxShadow: [
                                BoxShadow(blurRadius: 5, offset: Offset(1, 1))
                              ]),
                          child: Text('9',
                              style: TextStyle(
                                  fontSize: 27, fontWeight: FontWeight.w500)),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.orangeAccent,
                              boxShadow: [
                                BoxShadow(blurRadius: 5, offset: Offset(1, 1))
                              ]),
                          child: Text('*',
                              style: TextStyle(
                                  fontSize: 27, fontWeight: FontWeight.w500)),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.blueGrey,
                              boxShadow: [
                                BoxShadow(blurRadius: 5, offset: Offset(1, 1))
                              ]),
                          child: Text('4',
                              style: TextStyle(
                                  fontSize: 27, fontWeight: FontWeight.w500)),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.blueGrey,
                              boxShadow: [
                                BoxShadow(blurRadius: 5, offset: Offset(1, 1))
                              ]),
                          child: Text('5',
                              style: TextStyle(
                                  fontSize: 27, fontWeight: FontWeight.w500)),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.blueGrey,
                              boxShadow: [
                                BoxShadow(blurRadius: 5, offset: Offset(1, 1))
                              ]),
                          child: Text('6',
                              style: TextStyle(
                                  fontSize: 27, fontWeight: FontWeight.w500)),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.orangeAccent,
                              boxShadow: [
                                BoxShadow(blurRadius: 5, offset: Offset(1, 1))
                              ]),
                          child: Text('-',
                              style: TextStyle(
                                  fontSize: 27, fontWeight: FontWeight.w500)),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.blueGrey,
                              boxShadow: [
                                BoxShadow(blurRadius: 5, offset: Offset(1, 1))
                              ]),
                          child: Text('1',
                              style: TextStyle(
                                  fontSize: 27, fontWeight: FontWeight.w500)),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.blueGrey,
                              boxShadow: [
                                BoxShadow(blurRadius: 5, offset: Offset(1, 1))
                              ]),
                          child: Text('2',
                              style: TextStyle(
                                  fontSize: 27, fontWeight: FontWeight.w500)),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.blueGrey,
                              boxShadow: [
                                BoxShadow(blurRadius: 5, offset: Offset(1, 1))
                              ]),
                          child: Text('3',
                              style: TextStyle(
                                  fontSize: 27, fontWeight: FontWeight.w500)),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.orangeAccent,
                              boxShadow: [
                                BoxShadow(blurRadius: 5, offset: Offset(1, 1))
                              ]),
                          child: Text('+',
                              style: TextStyle(
                                  fontSize: 27, fontWeight: FontWeight.w500)),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.blueGrey,
                              boxShadow: [
                                BoxShadow(blurRadius: 5, offset: Offset(1, 1))
                              ]),
                          child: Text('0',
                              style: TextStyle(
                                  fontSize: 27, fontWeight: FontWeight.w500)),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.blueGrey,
                              boxShadow: [
                                BoxShadow(blurRadius: 5, offset: Offset(1, 1))
                              ]),
                          child: Text('.',
                              style: TextStyle(
                                  fontSize: 27, fontWeight: FontWeight.w500)),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.orangeAccent,
                              boxShadow: [
                                BoxShadow(blurRadius: 5, offset: Offset(1, 1))
                              ]),
                          child: Text('=',
                              style: TextStyle(
                                  fontSize: 27, fontWeight: FontWeight.w500)),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
