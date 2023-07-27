import 'package:flutter/material.dart';
import 'package:nikunj_project/fruite_app/splash_sceen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: splash_screen(),
    );
  }
}
