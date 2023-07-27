import 'package:flutter/material.dart';

import '../try/data_pass_2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: datavalidation(),
    );
  }
}

class datavalidation extends StatefulWidget {
  const datavalidation({super.key});

  @override
  State<datavalidation> createState() => _datavalidationState();
}

class _datavalidationState extends State<datavalidation> {
  var email = TextEditingController();
  var password = TextEditingController();
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Appbar')),
      body: Form(
          key: formkey,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'invalid';
                    } else if (value.length < 10) {
                      return 'enter minimum 10 characters';
                    }
                    return null;
                  },
                  controller: email,
                  decoration: InputDecoration(
                      labelText: 'email',
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                          BorderSide(color: Colors.green, width: 2)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                          BorderSide(width: 1, color: Colors.green))),
                ),
                SizedBox(height: 20),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'invalid';
                    } else if (value.length < 9) {
                      return 'Please enter minimum 8 characters';
                    }
                    return null;
                  },
                  controller: password,
                  decoration: InputDecoration(
                      labelText: 'password',
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                          BorderSide(color: Colors.green, width: 2)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                          BorderSide(width: 1, color: Colors.green))),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(
                            ContinuousRectangleBorder(
                                borderRadius: BorderRadius.circular(25)))),
                    onPressed: () {
                      setState(() {
                        formkey.currentState!.validate()
                            ? Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  secondscreen(email.text, password.text),
                            ))
                            : null;
                      });
                    },
                    child: Text('Click here'))
              ],
            ),
          )),
    );
  }
}
