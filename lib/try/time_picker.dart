import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: date_pick(),
    );
  }
}

class date_pick extends StatefulWidget {
  const date_pick({super.key});

  @override
  State<date_pick> createState() => _date_pickState();
}

class _date_pickState extends State<date_pick> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              TimeOfDay? timepick = await showTimePicker(
                initialEntryMode: TimePickerEntryMode.dial,
                  context: context, initialTime: TimeOfDay.now());
              print('Hours=${timepick?.hour} Minutes=${timepick?.minute} ');
            },
            child: Text('Time Picker')),
      ),
    );
  }
}
