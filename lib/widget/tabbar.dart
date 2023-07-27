import 'package:flutter/material.dart';
import 'package:nikunj_project/widget/time_picker.dart';

import '../assignment/shopingpage.dart';
import '../assignment/textformfield/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Tab_bar(),
    );
  }
}

class Tab_bar extends StatefulWidget {
  const Tab_bar({super.key});

  @override
  State<Tab_bar> createState() => _Tab_barState();
}

class _Tab_barState extends State<Tab_bar> {
  @override


  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Icon(Icons.shopping_basket),
            Icon(Icons.login),
            Icon(Icons.lock_clock)
          ]),
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: TabBarView(children: [
            shoping(),
            loginpage(),
            time_picker()
          ])
        ),
      ),
    );
  }
}
