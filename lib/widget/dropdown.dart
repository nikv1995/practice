import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: dropdown(),
    );
  }
}

class dropdown extends StatefulWidget {
  const dropdown({super.key});

  @override
  State<dropdown> createState() => _dropdownState();
}

class _dropdownState extends State<dropdown> {
  String dropdown_value = 'high';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Container(color: Colors.grey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  child: DropdownButton(
                    elevation: 100,
                borderRadius: BorderRadius.circular(50),

                value: dropdown_value,
                items: [
                  DropdownMenuItem(value: 'high', child: Text('High')),
                  DropdownMenuItem(value: 'medium', child: Text('Medium')),
                  DropdownMenuItem(value: 'low', child: Text('Low')),
                  DropdownMenuItem(value: 'average', child: Text('Average')),
                ],
                onChanged: (value) {
                  setState(() {
                    dropdown_value = value!;
                  });
                },
              )),
              SizedBox(
                height: 50,
              ),
              Text(dropdown_value)
            ],
          ),
        ),
      ),
    );
  }
}
