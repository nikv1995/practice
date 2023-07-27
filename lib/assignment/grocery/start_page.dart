import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nikunj_project/assignment/grocery/second_screen.dart';

class startscreen extends StatefulWidget {
  const startscreen({Key? key}) : super(key: key);

  @override
  State<startscreen> createState() => _startscreenState();
}

class _startscreenState extends State<startscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.network(
                'https://as2.ftcdn.net/v2/jpg/03/59/60/45/1000_F_359604552_M4cwnrsSOecPxzBLJ1RI1AuXapTAY5Vk.jpg',
                fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.only(top: 335, left: 25, right: 25),
            child: Container(
              height: 400,
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                      height: 105,
                      width: 60,
                      child: Image.asset(
                        'assets/images/carot.png',
                        color: Colors.white,
                      )),
                  Text(
                    'Welcome',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 47,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'to our store',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 47,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'get your groceries in as fast as one hour',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => secondscreen(),));
                  },
                    child: Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 400,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(15)),
                      child: Text('Get Started',
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
