import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: listView_builder(),
    );
  }
}

class listView_builder extends StatefulWidget {
  const listView_builder({super.key});

  @override
  State<listView_builder> createState() => _listView_builderState();
}

class _listView_builderState extends State<listView_builder> {
  @override
  Widget build(BuildContext context) {
    List arrName = ['Nikunj', 'Rahul', 'Tushar', 'Harsh'];
    List arrSName = ['Vekariya', 'Kikani', 'Moradiya', 'Gajera'];
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Column(
          children: [
            ListTile(
                iconColor: Colors.red,
                shape:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                focusColor: Colors.green,
                tileColor: Colors.yellowAccent,
                title: Text('nikunj'),
                subtitle: Text('vekariya'),
                leading: Icon(Icons.face_2_rounded),
                trailing: Icon(Icons.add)),
            ListTile(
                iconColor: Colors.red,
                shape:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                focusColor: Colors.green,
                tileColor: Colors.yellowAccent,
                title: Text('Rahul'),
                subtitle: Text('Kikani'),
                leading: Icon(Icons.face_2_rounded),
                trailing: Icon(Icons.add)),
            ListTile(
                iconColor: Colors.red,
                shape:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                focusColor: Colors.green,
                tileColor: Colors.yellowAccent,
                title: Text('Tushar'),
                subtitle: Text('Moradiya'),
                leading: Icon(Icons.face_2_rounded),
                trailing: Icon(Icons.add)),
            ListTile(
                iconColor: Colors.red,
                shape:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                focusColor: Colors.green,
                tileColor: Colors.yellowAccent,
                title: Text('Harsh'),
                subtitle: Text('Gajera'),
                leading: Icon(Icons.face_2_rounded),
                trailing: Icon(Icons.add)),
          ],
        ),
      ),
    );
  }
}
