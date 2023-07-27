import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                alignment: Alignment.center,
                height: 120,
                width: 370,
                decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(20)),
                child: Text('UI_Design App',
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),
              ),
              CircleAvatar(
                backgroundColor: Colors.teal,
                maxRadius: 75,
                child: CircleAvatar(
                  maxRadius: 70,
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/1633578/pexels-photo-1633578.jpeg?auto=compress&cs=tinysrgb&w=600'),
                ),
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://images.pexels.com/photos/774281/pexels-photo-774281.jpeg?auto=compress&cs=tinysrgb&w=600'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.teal, width: 5),
                    boxShadow: [
                      BoxShadow(
                          blurStyle: BlurStyle.normal,
                          blurRadius: 5,
                          offset: Offset(4, 2))
                    ]),
              ),
              Container(
                height: 70,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(18),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 8,
                          offset: Offset(5, 4),
                          spreadRadius: 4,
                          color: Colors.black)
                    ]),
                child: Center(
                  child: Text('Wel-Come My Home',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 27,
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
