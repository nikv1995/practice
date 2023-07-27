import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: cards(),
    );
  }
}

class cards extends StatefulWidget {
  const cards({super.key});

  @override
  State<cards> createState() => _cardsState();
}

class _cardsState extends State<cards> {
  @override
  Widget build(BuildContext context) {
    var d_hight = MediaQuery.of(context).size.height;
    var d_width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Super Card',
          style: TextStyle(
              color: Colors.black, fontSize: 27, fontWeight: FontWeight.w600),
        ),
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.black,
                size: 30,
              ))
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            Container(
              margin: EdgeInsets.only(top: 13, bottom: 13, left: 20, right: 20),
              height: d_hight * .22,
              width: d_width * .9,
              decoration: BoxDecoration(
                  boxShadow: [BoxShadow(blurRadius: 12)],
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(18)),
              child: Padding(
                padding:
                    EdgeInsets.only(left: 20, right: 35, bottom: 18, top: 10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "VISA",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w900),
                          ),
                          Text(
                            '08/29',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '  \$',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Text(
                            '1,260.28',
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '. . . .',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          Text(
                            '. . . .',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          Text(
                            '. . . .',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          Text(
                            '1 4 2 4',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                        ],
                      )
                    ]),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 13, bottom: 13, left: 20, right: 20),
              height: d_hight * .22,
              width: d_width * .9,
              decoration: BoxDecoration(
                  boxShadow: [BoxShadow(blurRadius: 12)],
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(18)),
              child: Padding(
                padding:
                    EdgeInsets.only(left: 20, right: 35, bottom: 18, top: 10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "RUPAY",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w900),
                          ),
                          Text(
                            '04/30',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '  \$',
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                          Text(
                            '1180.28',
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '. . . .',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                          Text(
                            '. . . .',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                          Text(
                            '. . . .',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                          Text(
                            '7 7 8 7',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                        ],
                      )
                    ]),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 13, bottom: 13, left: 20, right: 20),
              height: d_hight * .22,
              width: d_width * .9,
              decoration: BoxDecoration(
                  boxShadow: [BoxShadow(blurRadius: 12)],
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(18)),
              child: Padding(
                padding:
                    EdgeInsets.only(left: 20, right: 35, bottom: 18, top: 10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "VISA",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w900),
                          ),
                          Text(
                            '09/16',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '  \$',
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                          Text(
                            '864.49',
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '. . . .',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                          Text(
                            '. . . .',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                          Text(
                            '. . . .',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                          Text(
                            '1 0 1 3',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                        ],
                      )
                    ]),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 13, bottom: 13, left: 20, right: 20),
              height: d_hight * .22,
              width: d_width * .9,
              decoration: BoxDecoration(
                  boxShadow: [BoxShadow(blurRadius: 12)],
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(18)),
              child: Padding(
                padding:
                    EdgeInsets.only(left: 20, right: 35, bottom: 18, top: 10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "RUPAY",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w900),
                          ),
                          Text(
                            '12/25',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '  \$',
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                          Text(
                            '2021.87',
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '. . . .',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                          Text(
                            '. . . .',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                          Text(
                            '. . . .',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                          Text(
                            '2 5 4 7',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                        ],
                      )
                    ]),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
