import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: gridview_builder(),
    );
  }
}

class gridview_builder extends StatefulWidget {
  const gridview_builder({super.key});

  @override
  State<gridview_builder> createState() => _gridview_builderState();
}

class _gridview_builderState extends State<gridview_builder> {
  @override
  Widget build(BuildContext context) {
    List<Color> arr = [
      Colors.black,
      Colors.green,
      Colors.red,
      Colors.orange,
      Colors.yellowAccent,
      Colors.grey,
      Colors.purple,
      Colors.blueGrey,
      Colors.teal,
      Colors.brown,
      Colors.cyan
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: GridView.builder(
          itemCount: arr.length,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              mainAxisExtent: 350),
          itemBuilder: (context, index) {
            return Container(
              color: arr[index],
            );
          },
        ));
  }
}
