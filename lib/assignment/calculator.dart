import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: calculator());
  }
}

class calculator extends StatefulWidget {
  const calculator({Key? key}) : super(key: key);

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  var val1 = TextEditingController();
  var val2 = TextEditingController();
  double? result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Center(
              child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
                controller: val1,
                decoration: InputDecoration(
                    hintText: 'Enter value1',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(height: 15),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: val2,
                decoration: InputDecoration(
                    hintText: 'Enter value2',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(height: 30),
              RadioListTile(
                title: Text('Addition'),
                value: 'Addition',
                groupValue: result,
                onChanged: (value) {
                  setState(() {
                    double v1 = double.parse(val1.text);
                    double v2 = double.parse(val2.text);
                    result = v1 + v2;
                  });
                },
              ),
              RadioListTile(
                title: Text('Subtraction'),
                value: 'Subtraction',
                groupValue: result,
                onChanged: (value) {
                  setState(() {
                    double v1 = double.parse(val1.text);
                    double v2 = double.parse(val2.text);
                    result = v1 - v2;
                  });
                },
              ),
              RadioListTile(
                title: Text('Multiplication'),
                value: 'Multiplication',
                groupValue: result,
                onChanged: (value) {
                  setState(() {
                    double v1 = double.parse(val1.text);
                    double v2 = double.parse(val2.text);
                    result = v1 * v2;
                  });
                },
              ),
              RadioListTile(
                title: Text('Division'),
                value: 'Division',
                groupValue: result,
                onChanged: (value) {
                  setState(() {
                    double v1 = double.parse(val1.text);
                    double v2 = double.parse(val2.text);
                    result = v1 / v2;
                  });
                },
              ),
              SizedBox(height: 30),
              Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.black)),
                  child: Text(
                    '$result',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  ))
            ],
          )),
        ),
      ),
    );
  }
}
