// Write a code to select Date on button's click event

import 'package:flutter/material.dart';

void main() => runApp(MyApp())

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
    DateTime? date_picked = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'DAY=${date_picked.day} MONTH=${date_picked.month} YEAR=${date_picked.year}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.blue)),
            SizedBox(height: 35),
            ElevatedButton(
                onPressed: () {
                  setState(() async {
                    DateTime? pickdate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2030));
                    date_picked = pickdate;
                    print(
                        'DAY=${pickdate?.day} MONTH=${pickdate?.month} YEAR=${pickdate?.year}');
                  });
                },
                child: Text('Select Date')),
          ],
        ),
      ),
    );
  }
}
