import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class second_screen extends StatelessWidget {
  var user;
  var password;

  second_screen(this.user,this.password){}

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Appbar')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(child: Text('$user'),),
            SizedBox(height: 20,),
            Container(child: Text('$password'),)
          ],
        ),
      ),

    );
  }
}
