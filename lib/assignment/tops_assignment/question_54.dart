// Create an application to take input number from user and print its reverse number in TextView without button.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: reverse(),
    );
  }
}

class reverse extends StatefulWidget {
  const reverse({Key? key}) : super(key: key);

  @override
  State<reverse> createState() => _reverseState();
}

class _reverseState extends State<reverse> {
  var control = TextEditingController();
  var num = '';

  Reverse() {
    setState(() {
      var rev = '';

      var input = control.text;
      for (var i = input.length - 1; i >= 0; i--) {
        rev = rev + input[i];
      }

      num = rev;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: control,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Reverse();
                  },
                  child: Text(
                    'Click here',
                    style: TextStyle(fontSize: 20),
                  )),
              SizedBox(
                height: 20,
              ),
              Text(
                'Reverse is : $num',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    );
  }
}
