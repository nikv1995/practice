import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nikunj_project/assignment/food_cafe_app/home_screen.dart';
import '../../logic/mediaquery_file.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: splash_screen(),
    );
  }
}

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => homescreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    MediaQuery_use.OnInit(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(children: [
        const SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image(
                image: NetworkImage(
                  'https://images.pexels.com/photos/1813465/pexels-photo-1813465.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                ),
                fit: BoxFit.cover)),
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  'Food Cafe',
                  style: TextStyle(
                      fontFamily: 'custome1',
                      fontSize: 50,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                SizedBox(height: 20),
                Text(
                  'Tasty & Healthy',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
