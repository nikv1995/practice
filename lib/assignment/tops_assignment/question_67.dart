// Write a code to display alert dialog with positive, negative and neutral button and
// display toast respectively user's choice

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: dialog(),
    );
  }
}

class dialog extends StatefulWidget {
  const dialog({super.key});

  @override
  State<dialog> createState() => _dialogState();
}

class _dialogState extends State<dialog> {
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
                    backgroundColor: Colors.yellowAccent,
                    title: Center(
                        child: Text(
                      'Please Select Above Option',
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
                              child: Text('Show Content')),
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
