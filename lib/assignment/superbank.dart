import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title:
              Center(child: Text('SUPER BANK', style: TextStyle(fontSize: 20))),
        ),
        body: Container(
          color: Colors.black,
          padding: EdgeInsets.all(20),
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(color: Colors.black),
                  height: 250,
                  width: 250,
                  child: Center(
                      child: Text('Save your balance',
                          style: TextStyle(fontSize: 48))),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://s.yimg.com/ny/api/res/1.2/r1tnhuKTjhmrgS7T9JE_ZQ--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyMDA7aD02NzU-/https://media.zenfs.com/en/gobankingrates_644/b563119c75aaa7e39630c97343f790cb'),
                          fit: BoxFit.cover)),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(color: Colors.black),
                  height: 200,
                  width: 300,
                  child: Center(
                    child: Text(
                        'Best solution to save your balance & transaction',
                        style: TextStyle(fontSize: 25)),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: 150,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        maxRadius: 4,
                        backgroundColor: Colors.white,
                      ),
                      CircleAvatar(
                        maxRadius: 4,
                        backgroundColor: Colors.white,
                      ),
                      CircleAvatar(
                        maxRadius: 4,
                        backgroundColor: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 40,
                  width: 150,
                  alignment: Alignment.center,
                  child: Text('Get Started',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w500)),
                  decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(7)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
