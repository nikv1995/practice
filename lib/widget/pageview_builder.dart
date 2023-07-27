import 'package:flutter/material.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'MyApp', home: page_view(), debugShowCheckedModeBanner: false);
  }
}

class page_view extends StatefulWidget {
  State<page_view> createState() => page_view_state();
}

class page_view_state extends State<page_view> {
  var colorlist = [
    Colors.amber,
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.teal,
    Colors.grey,
    Colors.cyan,
    Colors.brown,
    Colors.lightGreen,
  ];
  int screencount = 0;

  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
      onPageChanged: (index) {
        setState(() {
          screencount = index;
        });
      },
      itemCount: colorlist.length,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(45),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            color: colorlist[index],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('$screencount',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w500)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    screencount == 0
                        ? Icon(Icons.circle)
                        : Icon(Icons.circle_outlined),
                    screencount == 1
                        ? Icon(Icons.circle)
                        : Icon(Icons.circle_outlined),
                    screencount == 2
                        ? Icon(Icons.circle)
                        : Icon(Icons.circle_outlined),
                    screencount == 3
                        ? Icon(Icons.circle)
                        : Icon(Icons.circle_outlined),
                    screencount == 4
                        ? Icon(Icons.circle)
                        : Icon(Icons.circle_outlined),
                    screencount == 5
                        ? Icon(Icons.circle)
                        : Icon(Icons.circle_outlined),
                    screencount == 6
                        ? Icon(Icons.circle)
                        : Icon(Icons.circle_outlined),
                    screencount == 7
                        ? Icon(Icons.circle)
                        : Icon(Icons.circle_outlined),
                    screencount == 8
                        ? Icon(Icons.circle)
                        : Icon(Icons.circle_outlined),
                  ],
                )
              ],
            ),
          ),
        );
      },
    ));
  }
}
