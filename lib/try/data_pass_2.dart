import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class secondscreen extends StatefulWidget {
  var email_;
  var password_;
  secondscreen(this.email_, this.password_);

  @override
  State<secondscreen> createState() => _secondscreenState();
}

class _secondscreenState extends State<secondscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                child: Text(
              'Email : ${widget.email_}',
              style: TextStyle(
                  color: Colors.red, fontSize: 30, fontWeight: FontWeight.w500),
            )),
            Container(
                child: Text('Password : ${widget.password_}',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 30,
                        fontWeight: FontWeight.w500)))
          ],
        ),
      ),
    );
  }
}
