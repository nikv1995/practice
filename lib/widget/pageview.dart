import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: pageview(),
    );
  }
}

class pageview extends StatefulWidget {
  const pageview({Key? key}) : super(key: key);

  @override
  State<pageview> createState() => _pageviewState();
}

class _pageviewState extends State<pageview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      pageSnapping: false,
      physics: BouncingScrollPhysics(),
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.blue,
        ),
        Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.green,
        ),
        Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.red,
        ),
        Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.amber,
        ),
      ],
    ));
  }
}
