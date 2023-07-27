import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nikunj_project/advance_flutter/shared_preference/basic%20login%20app/home_screen.dart';
import 'package:nikunj_project/advance_flutter/shared_preference/basic%20login%20app/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    whereToGo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green,
        child: Center(child: Icon(Icons.person_2_sharp, size: 60)),
      ),
    );
  }

  void whereToGo() async {
    var prefs = await SharedPreferences.getInstance();

    var isloggedin = prefs.getBool('LOGIN');

    Timer(Duration(seconds: 3), () {
      if (isloggedin != null) {
        if (isloggedin == true) {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => homeScreen()));
        } else {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => loginScreen()));
        }
      } else {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => loginScreen()));
      }
    });
  }
}
