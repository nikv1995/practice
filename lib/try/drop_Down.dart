import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Drop_down(),
    );
  }
}

class Drop_down extends StatefulWidget {
  const Drop_down({super.key});

  @override
  State<Drop_down> createState() => _Drop_downState();
}

class _Drop_downState extends State<Drop_down> {
  String dropdown_value = 'High';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Container(
          child: DropdownButton(
            elevation: 20,
            icon: Icon(Icons.volume_up_outlined),
            value: dropdown_value,
            items: [
              DropdownMenuItem(value: 'High', child: Text('High')),
              DropdownMenuItem(value: 'Medium', child: Text('Medium')),
              DropdownMenuItem(value: 'Low', child: Text('Low')),
              DropdownMenuItem(value: 'Average', child: Text('Average')),
            ],
            onChanged: (value) {
              setState(() {
                dropdown_value = value!;
                print(dropdown_value);
              });
            },

          ),
        ),
      ),
    );
  }
}
