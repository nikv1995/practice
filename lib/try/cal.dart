import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      title: 'practice calculator',
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
  String answer = "";

  String first = "";
  String second = "";

  int counter = 0;

  String exceptionmsg = "Can't divide by zero";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Working Calculator'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                  color: Colors.blue,
                  margin: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  child: Text(
                    answer,
                    style: const TextStyle(color: Colors.black, fontSize: 30),
                  )),
            ),
            Row(
              children: [
                operativebutton(s: "AC", buttoncolor: Colors.orangeAccent),
                operativebutton(s: "+", buttoncolor: Colors.orangeAccent),
                operativebutton(s: "-", buttoncolor: Colors.orangeAccent),
                operativebutton(s: "/", buttoncolor: Colors.orangeAccent),
              ],
            ),
            Row(
              children: [
                numericbutton(i: "9", buttoncolor: Colors.black38),
                numericbutton(i: "8", buttoncolor: Colors.black38),
                numericbutton(i: "7", buttoncolor: Colors.black38),
                operativebutton(s: "+", buttoncolor: Colors.orangeAccent),
              ],
            ),
            Row(
              children: [
                numericbutton(i: "6", buttoncolor: Colors.black38),
                numericbutton(i: "5", buttoncolor: Colors.black38),
                numericbutton(i: "4", buttoncolor: Colors.black38),
                operativebutton(s: "-", buttoncolor: Colors.orangeAccent),
              ],
            ),
            Row(
              children: [
                numericbutton(i: "3", buttoncolor: Colors.black38),
                numericbutton(i: "2", buttoncolor: Colors.black38),
                numericbutton(i: "1", buttoncolor: Colors.black38),
                operativebutton(s: "*", buttoncolor: Colors.orangeAccent),
              ],
            ),
            Row(
              children: [
                numericbutton(i: "0", buttoncolor: Colors.black38),
                numericbutton(i: ".", buttoncolor: Colors.black38),
                operativebutton(s: "=", buttoncolor: Colors.orangeAccent),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ));
  }

  Widget numericbutton({required String i, buttoncolor}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              if (answer == exceptionmsg) {
                answer = " ";
              }

              answer = "$answer$i";
            });
          },
          backgroundColor: buttoncolor,
          child: Text(i,
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Colors.black)),
        ),
      ),
    );
  }

  Widget operativebutton({required String s, buttoncolor}) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (s == "AC") {
              answer = "";
            } else if (s == "+") {
              counter = 1;
              first = answer;
              answer = " ";
            } else if (s == "-") {
              first = answer;
              answer = " ";
              counter = 2;
            } else if (s == "*") {
              first = answer;
              answer = " ";
              counter = 3;
            } else if (s == "/") {
              counter = 4;
              first = answer;
              answer = "";
            } else if (s == "=") {
              second = answer;
              double a = double.parse(first);
              double b = double.parse(second);

              double c = 0;

              if (counter == 1) {
                c = a + b;

                answer = c.toString();
              } else if (counter == 2) {
                c = a - b;

                answer = c.toString();
              } else if (counter == 3) {
                c = a * b;

                answer = c.toString();
              } else if (counter == 4) {
                if (b != 0) {
                  c = a / b;

                  answer = c.toString();
                } else {
                  answer = exceptionmsg;
                }
              }
            }
          });
        },
        backgroundColor: buttoncolor,
        child: Text(s,
            style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
                color: Colors.black)),
      ),
    ));
  }
}
