import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: dialogbox(),
    );
  }
}

class dialogbox extends StatefulWidget {
  const dialogbox({super.key});

  @override
  State<dialogbox> createState() => _dialogboxState();
}

class _dialogboxState extends State<dialogbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Alert'),
                        elevation: 20,
                        icon: Icon(Icons.add_alert),
                        actions: [
                          TextButton(
                            onPressed: () {},
                            child: Text('Yes'),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('No'))
                        ],
                      );
                    });
              },
              child: Text('click here'))),
    );
  }
}
