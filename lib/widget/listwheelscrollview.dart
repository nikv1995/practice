import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: list_wheel_scroll_view(),
    );
  }
}

class list_wheel_scroll_view extends StatefulWidget {
  const list_wheel_scroll_view({super.key});

  @override
  State<list_wheel_scroll_view> createState() => _list_wheel_scroll_viewState();
}

class _list_wheel_scroll_viewState extends State<list_wheel_scroll_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: ListWheelScrollView(
          physics: BouncingScrollPhysics(),
          useMagnifier: Paint.enableDithering,
          itemExtent: 50, children: [
        Container(height: 100,color: Colors.green,padding: EdgeInsets.all(10),),
        Container(height: 100,color: Colors.red,padding: EdgeInsets.all(10),),
        Container(height: 100,color: Colors.yellowAccent,padding: EdgeInsets.all(10),),
        Container(height: 100,color: Colors.orangeAccent,padding: EdgeInsets.all(10),),
        Container(height: 100,color: Colors.blue,padding: EdgeInsets.all(10),),
        Container(height: 100,color: Colors.grey,padding: EdgeInsets.all(10),),
        Container(height: 100,color: Colors.black,padding: EdgeInsets.all(10),),
        Container(height: 100,color: Colors.purple,padding: EdgeInsets.all(10),),
        Container(height: 100,color: Colors.pinkAccent,padding: EdgeInsets.all(10),),
        Container(height: 100,color: Colors.teal,padding: EdgeInsets.all(10),),

      ])
    );
  }
}
