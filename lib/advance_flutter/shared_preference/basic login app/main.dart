import 'package:flutter/material.dart';
import 'package:nikunj_project/advance_flutter/shared_preference/basic%20login%20app/splash_acreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SharedPreference',
      home: splashScreen(),
    );
  }
}
