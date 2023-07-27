import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: flutter_toast(),
    );
  }
}

class flutter_toast extends StatefulWidget {
  const flutter_toast({super.key});

  @override
  State<flutter_toast> createState() => _flutter_toastState();
}

class _flutter_toastState extends State<flutter_toast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Fluttertoast.showToast(
                  msg: 'Hello How are you',
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM_LEFT,
                timeInSecForIosWeb: 10
              );
            },
            child: Text('Click here')),
      ),
    );
  }
}
