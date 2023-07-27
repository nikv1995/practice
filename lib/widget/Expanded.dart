import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                alignment: Alignment.center,
                child: Text('Hello...',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 50)),
                height: 100,
                width: double.infinity,
                color: Colors.yellow,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                alignment: Alignment.center,
                child: Text('Hello...',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 50)),
                height: 100,
                width: double.infinity,
                color: Colors.green,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                child: Text('Hello...',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 50)),
                height: 100,
                width: double.infinity,
                color: Colors.red,
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text('Hello...',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 50)),
              height: 100,
              width: double.infinity,
              color: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
