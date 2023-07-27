import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nikunj_project/fruite_app/homepage.dart';
import 'package:nikunj_project/fruite_app/media_query.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => home_page()));
    });
  }

  @override
  Widget build(BuildContext context) {
    Media_Query.Mq_Use(context);

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.yellowAccent,
        child: Center(
          child: Container(
            height: Media_Query.h * .5,
            width: Media_Query.w * .7,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/fruites.png'))),
          ),
        ),
      ),
    );
  }
}
