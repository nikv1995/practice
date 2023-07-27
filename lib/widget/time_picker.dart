import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: time_picker());
  }
}

class time_picker extends StatefulWidget {
  const time_picker({super.key});

  @override
  State<time_picker> createState() => _time_pickerState();
}

class _time_pickerState extends State<time_picker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () async {
                TimeOfDay? timepicked = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                    initialEntryMode: TimePickerEntryMode.dial);
                if (timepicked != null) {
                  print('hours=${timepicked.hour} minuts=${timepicked.minute} recenttime=${TimeOfDay.now()}');
                }
                setState(() {

                });
              },
              child: Text('Time Picker'))),
    );
  }
}
