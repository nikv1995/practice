import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(myapp());

class myapp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, title: 'MyApp', home: textform());
  }
}

class textform extends StatefulWidget {
  State<textform> createState() => textformState();
}

class textformState extends State<textform> {
  var email = TextEditingController();
  var password = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TextFormField')),
      body: Center(
        child: Container(
          width: 300,
          height: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: email,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                decoration: InputDecoration(
                    label: Text('Email'),
                    prefixIcon: Icon(Icons.email_outlined,
                        color: Colors.green, size: 30),
                    hintText: 'Enter Email',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            color: Colors.green,
                            style: BorderStyle.solid,
                            width: 3)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            color: Colors.red,
                            width: 3,
                            style: BorderStyle.solid))),
              ),
              SizedBox(height: 15),
              TextFormField(
                keyboardType: TextInputType.phone,
                obscureText: true,
                obscuringCharacter: '*',
                controller: password,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                decoration: InputDecoration(
                    label: Text('Password'),
                    prefixIcon: Icon(Icons.email_outlined,
                        color: Colors.green, size: 30),
                    hintText: 'Enter Password',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            color: Colors.green,
                            style: BorderStyle.solid,
                            width: 3)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            color: Colors.red,
                            width: 3,
                            style: BorderStyle.solid))),
              ),
              SizedBox(height: 15),
              ElevatedButton(
                  onPressed: () {
                    var uname = email.text.toString();
                    var upassword = password.text;
                    print('Email is : $uname and Password is : $upassword');
                  },
                  child: Text('Login'))
            ],
          ),
        ),
      ),
    );
  }
}
