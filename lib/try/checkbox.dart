import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Alert_dilogbox(),
    );
  }
}

class Alert_dilogbox extends StatefulWidget {
  const Alert_dilogbox({Key? key}) : super(key: key);

  @override
  State<Alert_dilogbox> createState() => _Alert_dilogboxState();
}

class _Alert_dilogboxState extends State<Alert_dilogbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(title: Text("Whatsapp"),
                      icon: Icon(Icons.message),
                      content: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder()),
                      ),
                      actions: [
                        TextButton(onPressed: () {
                          Navigator.pop(context);
                        }, child: Text("Cancle")),
                        TextButton(onPressed: () {
                          Navigator.pop(context);
                        }, child: Text("Logout"))
                      ],
                    );;
                  },
                );
              },
              child: Text("Alert Dilogbox")
          )
      ),
    );
  }
  }