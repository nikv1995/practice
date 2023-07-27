import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: shoping(),
    );
  }
}

class shoping extends StatefulWidget {
  const shoping({Key? key}) : super(key: key);

  @override
  State<shoping> createState() => _shopingState();
}

class _shopingState extends State<shoping> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shoping App', style: TextStyle(fontSize: 22)),
      ),
      body: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: EdgeInsets.all(height * .01),
            height: height * .3,
            width: width * .4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 150,
                  width: 120,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: NetworkImage(
                              'https://images.pexels.com/photos/12034622/pexels-photo-12034622.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        width: 1,
                        color: Colors.black,
                      )),
                ),
                Text('Burger : 150rs',
                    style: TextStyle(
                        fontSize: height * .023, fontWeight: FontWeight.w500)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (count > 0) {
                            count--;
                          }
                        });
                      },
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(height * .009),
                        child: Container(
                            alignment: Alignment.center,
                            height: height * .04,
                            width: height * .04,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(height * .009)),
                            child: Icon(
                              Icons.remove,
                              size: height * .04,
                            )),
                      ),
                    ),
                    Container(
                        alignment: Alignment.center,
                        height: height * .04,
                        width: height * .06,
                        child: Text(
                          '$count',
                          style: TextStyle(fontSize: height * .03),
                        )),
                    InkWell(
                      onTap: () {
                        setState(() {
                          count++;
                        });
                      },
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(height * .009),
                        child: Container(
                            alignment: Alignment.center,
                            height: height * .04,
                            width: height * .04,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(height * .009)),
                            child: Icon(
                              Icons.add,
                              size: height * .04,
                            )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(height * .01),
            height: height * .3,
            width: width * .4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 150,
                  width: 120,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: NetworkImage(
                              'https://images.pexels.com/photos/12034622/pexels-photo-12034622.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        width: 1,
                        color: Colors.black,
                      )),
                ),
                Text('Burger : 150rs',
                    style: TextStyle(
                        fontSize: height * .023, fontWeight: FontWeight.w500)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (count > 0) {
                            count--;
                          }
                        });
                      },
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(height * .009),
                        child: Container(
                            alignment: Alignment.center,
                            height: height * .04,
                            width: height * .04,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(height * .009)),
                            child: Icon(
                              Icons.remove,
                              size: height * .04,
                            )),
                      ),
                    ),
                    Container(
                        alignment: Alignment.center,
                        height: height * .04,
                        width: height * .06,
                        child: Text(
                          '$count',
                          style: TextStyle(fontSize: height * .03),
                        )),
                    InkWell(
                      onTap: () {
                        setState(() {
                          count++;
                        });
                      },
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(height * .009),
                        child: Container(
                            alignment: Alignment.center,
                            height: height * .04,
                            width: height * .04,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(height * .009)),
                            child: Icon(
                              Icons.add,
                              size: height * .04,
                            )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),

    );
  }
}
