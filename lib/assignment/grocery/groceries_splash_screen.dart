import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nikunj_project/assignment/grocery/start_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData(primarySwatch: Colors.green),
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: splashscreen());
  }
}

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => startscreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.green,
        child: Center(
          child: Container(
              height: 110,
              width: 300,
              child: Row(children: [
                Container(
                    height: 110,
                    width: 60,
                    child: Image.asset(
                      'assets/images/carot.png',
                      color: Colors.white,
                    )),
                Container(
                  height: 105,
                  width: 220,
                  child: Column(
                    children: [
                      Text('nectar',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 70,
                              fontWeight: FontWeight.w500)),
                      Text('o n l i n e   g r o c e r i e s',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w400)),
                    ],
                  ),
                )
              ])),
        ),
      ),
    );
  }
}
