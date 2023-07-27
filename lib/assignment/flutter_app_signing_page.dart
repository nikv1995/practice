import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter_App_Signing_page',
                style: TextStyle(color: Colors.black)),
          ),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            padding: EdgeInsets.only(left: 18, right: 18),
            child: Column(
              children: [
                Container(
                  height: 280,
                  child: Image.network(

                      'https://storage.googleapis.com/cms-storage-bucket/d406c736e7c4c57f5f61.png'),
                ),
                Container(
                  height: 30,
                  width: double.infinity,
                  child: Text('Phone Number',
                      style: TextStyle(color: Colors.blueGrey, fontSize: 27)),
                ),
                Divider(
                  height: 70,
                  thickness: 1,
                  color: Colors.black,
                ),
                Container(
                  height: 30,
                  width: double.infinity,
                  child: Text('Password',
                      style: TextStyle(color: Colors.blueGrey, fontSize: 27)),
                ),
                Divider(
                  height: 70,
                  thickness: 1,
                  color: Colors.black,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5)),
                  child: Text('Log In',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w400)),
                ),
                Container(
                  height: 50,
                  alignment: Alignment.center,
                  child: Text('Forget password? Tap me',
                      style: TextStyle(fontSize: 18)),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(5)),
                  child: Text('No Account? Sign up',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w400)),
                ),
              ],
            ),
          )),
    );
  }
}
