import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: gridview(),
    );
  }
}

class gridview extends StatefulWidget {
  const gridview({super.key});

  @override
  State<gridview> createState() => _gridviewState();
}

class _gridviewState extends State<gridview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: GridView.extent(
              maxCrossAxisExtent: 180,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                Container(
                  color: Colors.grey,
                ),
                Container(
                  color: Colors.grey,
                ),
                Container(
                  color: Colors.grey,
                ),
                Container(
                  color: Colors.grey,
                ),
                Container(
                  color: Colors.grey,
                ),
                Container(
                  color: Colors.grey,
                ),
                Container(
                  color: Colors.grey,
                ),
                Container(
                  color: Colors.grey,
                ),
                Container(
                  color: Colors.grey,
                ),
                Container(
                  color: Colors.grey,
                ),
                Container(
                  color: Colors.grey,
                ),
                Container(
                  color: Colors.grey,
                ),
                Container(
                  color: Colors.grey,
                ),
                Container(
                  color: Colors.grey,
                ),
                Container(
                  color: Colors.grey,
                ),
                Container(
                  color: Colors.grey,
                ),
                Container(
                  color: Colors.grey,
                ),
                Container(
                  color: Colors.grey,
                ),
                Container(
                  color: Colors.grey,
                ),
                Container(
                  color: Colors.grey,
                ),
                Container(
                  color: Colors.grey,
                ),
                Container(
                  color: Colors.grey,
                ),
                Container(
                  color: Colors.grey,
                ),
                Container(
                  color: Colors.grey,
                ),
                Container(
                  color: Colors.grey,
                ),
                Container(
                  color: Colors.grey,
                ),
                Container(
                  color: Colors.grey,
                ),
              ]),
        ),
      ),
    );
  }
}
