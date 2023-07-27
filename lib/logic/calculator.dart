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
  const calculator({super.key});

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  String first = '';
  String second = '';
  String answer = '';
  String exception = 'Can\'t Devide By Zero';
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Container(
          color: Color.fromRGBO(248, 248, 248, .5),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    bottom: _width * .05,
                    top: _width * .3,
                  ),
                  height: _height * .29,
                  width: _width,
                  child:
                      Text('$answer          ', style: TextStyle(fontSize: _width * .15)),
                ),
                SizedBox(height: _width * .025),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    operative(o: '+'),
                    operative(o: '-'),
                    operative(o: '*'),
                    operative(o: '/'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    numeric(n: '7'),
                    numeric(n: '8'),
                    numeric(n: '9'),
                    operative(o: '%'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    numeric(n: '4'),
                    numeric(n: '5'),
                    numeric(n: '6'),
                    operative(o: 'AC'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    numeric(n: '1'),
                    numeric(n: '2'),
                    numeric(n: '3'),
                    operative(o: 'back'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    numeric(n: '00'),
                    numeric(n: '0'),
                    numeric(n: '.'),
                    operative(o: '='),
                  ],
                ),
              ],
            ),
          ),
        ));
  }

  Widget numeric({required String n}) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Material(
      borderRadius: BorderRadius.circular(7),
      elevation: 3,
      color: Colors.white,
      child: InkWell(
        onTap: () {
          setState(() {
            if (answer==exception)
            {
             answer='';
            }
            answer = '$answer$n';
          });
        },
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(7)),
          margin: EdgeInsets.all(_width * .001),
          height: _height * .09,
          width: _width * .23,
          child: Text(n,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: _width * .08,
                  fontWeight: FontWeight.w500)),
        ),
      ),
    );
  }

  Widget operative({required String o}) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Material(
      elevation: 3,
      color: Colors.blue,
      borderRadius: BorderRadius.circular(7),
      child: InkWell(
        onTap: () {
          setState(() {
            if (o == 'AC') {
              answer = '';
            } else if (o == '+') {
              counter = 1;
              first = answer;
              answer = '';
            } else if (o == '-') {
              counter = 2;
              first = answer;
              answer = '';
            } else if (o == '*') {
              counter = 3;
              first = answer;
              answer = '';
            } else if (o == '/') {
              counter = 4;
              first = answer;
              answer = '';
            } else if (o == '%') {
              counter = 5;
              first = answer;
              answer = '';
            } else if (o == 'back') {
              answer = '';
            } else if (o == '=') {
              second = answer;
              answer='';

              double a = double.parse(first);
              double b = double.parse(second);
              double c = 0;

              if (counter == 1) {
                c = a + b;
                answer = c.toString();
              }
              if (counter == 2) {
                c = a - b;
                answer = c.toString();
              }
              if (counter == 3) {
                c = a * b;
                answer = c.toString();
              }
              if (counter == 4) {
                if (b != 0) {
                  c = a / b;
                  answer = c.toString();
                } else {
                  answer = exception;
                }
              }
              if (counter == 5) {
                c = a % b;
                answer = c.toString();
              }
            }
          });
        },
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(7)),
          margin: EdgeInsets.all(_width * .001),
          height: _height * .09,
          width: _width * .23,
          child: Text(o,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: _width * .07,
                  fontWeight: FontWeight.w500)),
        ),
      ),
    );
  }
}
