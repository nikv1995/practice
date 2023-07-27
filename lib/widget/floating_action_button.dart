import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(myapp());

class myapp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My app',
      home: home(),
    );
  }
}

class home extends StatefulWidget {
  State<StatefulWidget> createState() => homeState();
}

class homeState extends State<home> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
          FloatingActionButton.large(onPressed: () {}, child: Icon(Icons.add)),
          FloatingActionButton.small(onPressed: () {}, child: Icon(Icons.add)),
          FloatingActionButton.extended(
            onPressed: () {},
            label: Text('Balance'),
            icon: Icon(Icons.balance),
            elevation: 25,
            clipBehavior: Clip.antiAliasWithSaveLayer,
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(onPressed: () {

      },),
    );
  }
}
