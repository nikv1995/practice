// Write a code to display simple alert dialog with title, description and icon when button is clicked

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
                      backgroundColor: Colors.pinkAccent,
                      title: Center(
                          child: Text(
                        'Alert Dialog',
                        style: TextStyle(fontSize: 30),
                      )),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      actions: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('This is Simple DialogBox',
                                style: TextStyle(fontSize: 20)),
                            Icon(
                              Icons.exit_to_app,
                              size: 30,
                            )
                          ],
                        )
                      ],
                    );
                  },
                );
              },
              child: Text('Click Here'))),
    );
  }
}
