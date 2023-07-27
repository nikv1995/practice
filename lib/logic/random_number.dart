import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(rapp());

class rapp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          primarySwatch: Colors.amber,
          appBarTheme:
              AppBarTheme(elevation: 30, backgroundColor: Color(0xFF4d4644))),
      title: 'random number app',
      home: random_(),
    );
  }
}

class random_ extends StatefulWidget {
  State<StatefulWidget> createState() => homeState();
}

class homeState extends State<random_> {
  var random = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Random Number App',
          style: TextStyle(color: Colors.white),
        )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$random',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    random = Random().nextInt(1000);
                  });
                },
                child: Text(
                  'Click here',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
