import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        home: radio()
    );
  }
}
class radio extends StatefulWidget {
  const radio({Key? key}) : super(key: key);

  @override
  State<radio> createState() => _radioState();
}

class _radioState extends State<radio> {
  String gender='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Appbar')),
      body: Column(
        children: [
          RadioListTile(value: 'male', groupValue: gender, onChanged: (value) {
            setState(() {
              gender=value.toString();
            });
          },title: Text('Male')),
          RadioListTile(value: 'Female', groupValue: gender, onChanged: (value) {
            setState(() {
              gender=value.toString();
            });
          },title: Text('Female')),
          RadioListTile(value: 'Other', groupValue: gender, onChanged: (value) {
            setState(() {
              gender=value.toString();
            });
          },title: Text('Other')),
          Text('$gender')
        ],

      ),
    );
  }
}
