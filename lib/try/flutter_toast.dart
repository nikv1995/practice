import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: flutter_Toast(),
    );
  }
}

class flutter_Toast extends StatefulWidget {
  const flutter_Toast({super.key});

  @override
  State<flutter_Toast> createState() => _flutter_ToastState();
}

class _flutter_ToastState extends State<flutter_Toast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child:ElevatedButton(onPressed: () {
          Fluttertoast.showToast(msg: 'hello how are you');
        }, child: Text('click here')),
      ),
    );
  }
}
