// open alert dialog when user want to exit from the application
// Write a code to display alert dialog with positive, negative and neutral button and
// display toast respectively user's choice

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: dialog_box(),
    );
  }
}

class dialog_box extends StatefulWidget {
  const dialog_box({super.key});

  @override
  State<dialog_box> createState() => _dialog_boxState();
}

class _dialog_boxState extends State<dialog_box> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    alignment: Alignment.center,
                    backgroundColor: Colors.purpleAccent,
                    title: Center(
                        child: Text(
                      'Do you realy want to exit',
                      style: TextStyle(fontSize: 20),
                    )),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    actions: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                return Navigator.pop(context);
                              },
                              child: Text('No')),
                          ElevatedButton(
                              onPressed: () {
                                return Navigator.pop(context);
                              },
                              child: Text('Yes'))
                        ],
                      )
                    ],
                  );
                },
              );
            },
            child: Text('Click Here')),
      ),
    );
  }
}
