import 'package:flutter/material.dart';
import 'package:nikunj_project/widget/media_query.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final item = List<String>.generate(
      30,
      (index) {
        return 'Hello $index';
      },
    );

    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
          ),
          body: ListView.custom(
              itemExtent: 100,
              childrenDelegate:
                  SliverChildBuilderDelegate((context, index) => Container(alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(10),
                        color: Colors.grey,
                        height: 50,
                        child: Text(item[index]),
                      )))),
    );
  }
}
