import 'package:flutter/material.dart';
import 'package:nikunj_project/advance_flutter/shared_preference/basic%20login%20app/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  var uName = TextEditingController();
  var uPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Container(
          width: 270,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: uName,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person, color: Colors.black),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    label: Text('User Name')),
              ),
              SizedBox(height: 25),
              TextFormField(
                controller: uPass,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.key, color: Colors.black),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    label: Text('Password')),
              ),
              SizedBox(height: 25),
              ElevatedButton(
                  onPressed: () async {
                    var prefs = await SharedPreferences.getInstance();

                    prefs.setString('UNAME', uName.text.toString());
                    prefs.setString('UPASS', uPass.text.toString());

                    prefs.setBool('LOGIN', true);

                    Navigator.push(context, MaterialPageRoute(builder: (context) => homeScreen(),));
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 20),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
