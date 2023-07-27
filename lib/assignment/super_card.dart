import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Super Card',
              style: TextStyle(
                color: Colors.black,
                fontSize: 23,
              )),
          backgroundColor: Colors.white,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                ))
          ],
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding:
                      EdgeInsets.only(top: 15, left: 20, right: 20, bottom: 25),
                  height: 180,
                  width: 370,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 15,
                            blurStyle: BlurStyle.outer)
                      ],
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 40,
                              width: 160,
                              child: Text('VISA',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 30,
                                      color: Colors.white)),
                            ),
                            Container(
                              alignment: Alignment.topRight,
                              margin: EdgeInsets.only(right: 13),
                              height: 40,
                              width: 140,
                              child: Text('08/29',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 25,
                                      color: Colors.white)),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                left: 20,
                              ),
                              padding: EdgeInsets.only(bottom: 5),
                              height: 60,
                              width: 20,
                              alignment: Alignment.centerRight,
                              child: Text('\$',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 33)),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.only(bottom: 15),
                              height: 60,
                              width: 200,
                              child: Text('1260.28',
                                  style: TextStyle(
                                      fontSize: 45, color: Colors.white)),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              alignment: Alignment.bottomCenter,
                              height: 28,
                              width: 75,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    maxRadius: 3,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    maxRadius: 3,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    maxRadius: 3,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    maxRadius: 3,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomCenter,
                              height: 28,
                              width: 75,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    maxRadius: 3,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    maxRadius: 3,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    maxRadius: 3,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    maxRadius: 3,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomCenter,
                              height: 30,
                              width: 75,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    maxRadius: 3,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    maxRadius: 3,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    maxRadius: 3,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    maxRadius: 3,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                alignment: Alignment.center,
                                height: 30,
                                width: 90,
                                child: Text(
                                  '1424',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w500),
                                )),
                          ],
                        )
                      ]),
                ),
                Container(
                  padding:
                      EdgeInsets.only(top: 15, left: 20, right: 20, bottom: 25),
                  height: 180,
                  width: 370,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 15,
                            blurStyle: BlurStyle.outer)
                      ],
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blueAccent),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 40,
                              width: 160,
                              child: Text('RUPAY',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 30,
                                      color: Colors.black)),
                            ),
                            Container(
                              alignment: Alignment.topRight,
                              margin: EdgeInsets.only(right: 13),
                              height: 40,
                              width: 140,
                              child: Text('04/30',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 25,
                                      color: Colors.black)),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                left: 20,
                              ),
                              padding: EdgeInsets.only(bottom: 5),
                              height: 60,
                              width: 20,
                              alignment: Alignment.centerRight,
                              child: Text('\$',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 33)),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.only(bottom: 15),
                              height: 60,
                              width: 200,
                              child: Text('1180.28',
                                  style: TextStyle(
                                      fontSize: 45, color: Colors.black)),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              alignment: Alignment.bottomCenter,
                              height: 28,
                              width: 75,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.black,
                                    maxRadius: 3,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.black,
                                    maxRadius: 3,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.black,
                                    maxRadius: 3,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.black,
                                    maxRadius: 3,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomCenter,
                              height: 28,
                              width: 75,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.black,
                                    maxRadius: 3,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.black,
                                    maxRadius: 3,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.black,
                                    maxRadius: 3,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.black,
                                    maxRadius: 3,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomCenter,
                              height: 30,
                              width: 75,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.black,
                                    maxRadius: 3,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.black,
                                    maxRadius: 3,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.black,
                                    maxRadius: 3,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.black,
                                    maxRadius: 3,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                alignment: Alignment.center,
                                height: 30,
                                width: 90,
                                child: Text(
                                  '7787',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w500),
                                )),
                          ],
                        )
                      ]),
                ),
                Container(
                  padding:
                      EdgeInsets.only(top: 15, left: 20, right: 20, bottom: 25),
                  height: 180,
                  width: 370,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 15,
                            blurStyle: BlurStyle.outer)
                      ],
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.orangeAccent),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 40,
                              width: 160,
                              child: Text('VISA',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 30,
                                      color: Colors.black)),
                            ),
                            Container(
                              alignment: Alignment.topRight,
                              margin: EdgeInsets.only(right: 13),
                              height: 40,
                              width: 140,
                              child: Text('09/16',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 25,
                                      color: Colors.black)),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                left: 20,
                              ),
                              padding: EdgeInsets.only(bottom: 5),
                              height: 60,
                              width: 20,
                              alignment: Alignment.centerRight,
                              child: Text('\$',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 33)),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.only(bottom: 15),
                              height: 60,
                              width: 200,
                              child: Text('864.49',
                                  style: TextStyle(
                                      fontSize: 45, color: Colors.black)),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              alignment: Alignment.bottomCenter,
                              height: 28,
                              width: 75,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.black,
                                    maxRadius: 3,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.black,
                                    maxRadius: 3,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.black,
                                    maxRadius: 3,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.black,
                                    maxRadius: 3,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomCenter,
                              height: 28,
                              width: 75,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.black,
                                    maxRadius: 3,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.black,
                                    maxRadius: 3,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.black,
                                    maxRadius: 3,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.black,
                                    maxRadius: 3,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomCenter,
                              height: 30,
                              width: 75,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.black,
                                    maxRadius: 3,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.black,
                                    maxRadius: 3,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.black,
                                    maxRadius: 3,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.black,
                                    maxRadius: 3,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                alignment: Alignment.center,
                                height: 30,
                                width: 90,
                                child: Text(
                                  '1013',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w500),
                                )),
                          ],
                        )
                      ]),
                ),
                Container(
                  width: 360,
                  height: 65,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.home,
                          size: 45,
                        ),
                        Icon(
                          Icons.wallet,
                          size: 45,
                        ),
                        Icon(
                          Icons.qr_code_scanner,
                          size: 45,
                        ),
                        Icon(
                          Icons.compare_arrows_sharp,
                          size: 50,
                        ),
                        Icon(
                          Icons.settings,
                          size: 45,
                        ),
                      ]),
                )
              ]),
        ),
      ),
    );
  }
}
