import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: date_picker(),
    );
  }
}

class date_picker extends StatefulWidget {
  const date_picker({super.key});

  @override
  State<date_picker> createState() => _date_pickerState();
}

class _date_pickerState extends State<date_picker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Appbar")),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () async {
                DateTime? picked_date = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2030));
                if (picked_date != null) {
                  print(
                      'day=${picked_date.day} month=${picked_date.month} year=${picked_date.year}');
                }
              },
              child: Text('Date Picker')),
        ],
      ),
    );
  }
}
