// Create an application with radio buttons (Add, Substraction, Multiply, Division)
// EditText (number1, number2) and print result as per user choice from radio button in
// TextView

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: calculator(),
    );
  }
}

class calculator extends StatefulWidget {
  const calculator({Key? key}) : super(key: key);

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  var value1 = TextEditingController();
  var value2 = TextEditingController();

  double? result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            const Text(
              "calulator",
              style: TextStyle(
                  fontSize: 36,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              controller: value1,
              decoration: InputDecoration(
                  labelText: 'Enter a First value',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              controller: value2,
              decoration: InputDecoration(
                  labelText: 'Enter a second value',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: 30,
            ),
            RadioListTile(
              value: "Addition",
              groupValue: result,
              title: Text("Addition"),
              onChanged: (value) {
                setState(() {
                  int num1 = int.parse(value1.text);
                  int num2 = int.parse(value2.text);

                  int sum = num1 + num2;

                  result = sum.toDouble();
                });
              },
            ),
            RadioListTile(
              value: "substraction",
              groupValue: result,
              title: Text("subtraction"),
              onChanged: (value) {
                setState(() {
                  int num1 = int.parse(value1.text);
                  int num2 = int.parse(value2.text);

                  int sum = num1 - num2;

                  result = sum.toDouble();
                });
              },
            ),
            RadioListTile(
              value: "Multiplication",
              groupValue: result,
              title: Text("Multiplication"),
              onChanged: (value) {
                setState(() {
                  int num1 = int.parse(value1.text);
                  int num2 = int.parse(value2.text);

                  int sum = num1 * num2;

                  result = sum.toDouble();
                });
              },
            ),
            RadioListTile(
              value: "divison",
              groupValue: result,
              title: Text("Divison"),
              onChanged: (value) {
                setState(() {
                  int num1 = int.parse(value1.text);
                  int num2 = int.parse(value2.text);

                  int sum = num1 ~/ num2;

                  result = sum.toDouble();
                });
              },
            ),
            Text(
              "Result is $result",
              style: TextStyle(
                  fontSize: 36,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      )),
    );
  }
}
