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
    List arrName = ['Nikunj', 'Rahul', 'Tushar', 'Harsh', 'Hemnat'];
    List arrSName = ['Vekariya', 'Kikani', 'Moradiya', 'Gajera', 'Patel'];
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: ListView.separated(
        itemCount: arrName.length,
        padding: EdgeInsets.all(5),
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return ListTile(
              focusColor: Colors.green,
              tileColor: Colors.lightBlueAccent,
              title: Text(arrName[index],
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              subtitle: Text(arrSName[index],
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
              leading: Icon(Icons.face_2_rounded),
              trailing: Icon(Icons.add));
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            height: 5,
            thickness: 1,
          );
        },
      ),
    );
  }
}
