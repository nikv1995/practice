import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: textform());
  }
}

class textform extends StatefulWidget {
  State<textform> createState() => _textformState();
}

class _textformState extends State<textform> {
  var username = TextEditingController();
  var password = TextEditingController();
  bool visibility = true;
  visible() => IconButton(
      onPressed: () {
        setState(() {
          visibility = !visibility;
        });
      },
      icon: visibility ? Icon(Icons.visibility) : Icon(Icons.visibility_off));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Appbar')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              controller: username,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'username',
                prefixIcon: Icon(Icons.email),
                iconColor: Colors.blueGrey,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                focusColor: Colors.red,
                focusedBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                hintText: 'Email',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              controller: password,
              keyboardType: TextInputType.number,
              obscureText: visibility,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                labelText: 'password',
                prefixIcon: Icon(Icons.password_outlined),
                suffixIcon: visible(),
                iconColor: Colors.blueGrey,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                focusColor: Colors.red,
                focusedBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                hintText: 'password',
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blueGrey,
            ),
            child: Center(
              child: Text('Login',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500)),
            ),
          )
        ],
      ),
    );
  }
}
