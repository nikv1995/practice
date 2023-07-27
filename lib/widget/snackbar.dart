import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: snackbar(),
    );
  }
}

class snackbar extends StatefulWidget {
  const snackbar({Key? key}) : super(key: key);

  @override
  State<snackbar> createState() => _snackbarState();
}

class _snackbarState extends State<snackbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                backgroundColor: Colors.greenAccent,elevation: 20,duration: Duration(seconds: 3),
                  content: Text(
                'Snackbar seen',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              )));
            });
          },
          child: Container(
            alignment: Alignment.center,
            height: 50,
            width: 100,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    blurStyle: BlurStyle.normal,
                    blurRadius: 10,
                  )
                ]),
            child: Text('Snackbar',
                style: TextStyle(fontSize: 20, color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
