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
          leading: Icon(Icons.camera_alt_outlined, size: 30),
          title: Center(
              child: Text('Instagram',
                  style: TextStyle(fontFamily: 'custome1', fontSize: 28))),
          actions: [
            Icon(
              Icons.send_outlined,
              size: 30,
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              height: 95,
              decoration: BoxDecoration(color: Colors.black),
              alignment: Alignment.topCenter,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 90,
                      width: 85,
                      decoration: BoxDecoration(color: Colors.black),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Stack(children: [
                            CircleAvatar(
                              maxRadius: 28,
                              backgroundImage: NetworkImage(
                                'https://as1.ftcdn.net/v2/jpg/01/64/68/56/1000_F_164685626_QIeuYSPVgK7iYvwPUSqAMvL58pebqcs6.jpg',
                              ),
                            ),
                            Positioned(
                                bottom: -2,
                                right: -2,
                                child: Icon(
                                  Icons.add_circle,
                                  size: 25,
                                  color: Colors.blue,
                                ))
                          ]),
                          Text(
                            'panhcha...',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Container(
                      decoration: BoxDecoration(color: Colors.black),
                      height: 90,
                      width: 500,
                      child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                height: 90,
                                width: 85,
                                decoration: BoxDecoration(color: Colors.black),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    CircleAvatar(
                                      maxRadius: 30,
                                      backgroundColor: Colors.pink,
                                      child: CircleAvatar(
                                          maxRadius: 28.0,
                                          backgroundColor: Colors.black,
                                          child: CircleAvatar(
                                            maxRadius: 26.5,
                                            backgroundImage: NetworkImage(
                                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqrhoejT6bCuLKax1QNHCwdg7D2zbehhnnXg&usqp=CAU'),
                                          )),
                                    ),
                                    Text(
                                      'sonitakh...',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 90,
                                width: 85,
                                decoration: BoxDecoration(color: Colors.black),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    CircleAvatar(
                                      maxRadius: 30,
                                      backgroundColor: Colors.pink,
                                      child: CircleAvatar(
                                          maxRadius: 28.0,
                                          backgroundColor: Colors.black,
                                          child: CircleAvatar(
                                            maxRadius: 26.5,
                                            backgroundImage: NetworkImage(
                                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7-2HkRS7urj2qQCMmpD2y-ZIvKcIyFs032A&usqp=CAU'),
                                          )),
                                    ),
                                    Text(
                                      'babyswe...',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 90,
                                width: 85,
                                decoration: BoxDecoration(color: Colors.black),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    CircleAvatar(
                                      maxRadius: 30,
                                      backgroundColor: Colors.pink,
                                      child: CircleAvatar(
                                          maxRadius: 28.0,
                                          backgroundColor: Colors.black,
                                          child: CircleAvatar(
                                            maxRadius: 26.5,
                                            backgroundImage: NetworkImage(
                                                'https://cdn.pixabay.com/photo/2016/10/25/12/28/iceland-1768744_960_720.jpg'),
                                          )),
                                    ),
                                    Text(
                                      'whereav...',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 90,
                                width: 85,
                                decoration: BoxDecoration(color: Colors.black),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    CircleAvatar(
                                      maxRadius: 30,
                                      backgroundColor: Colors.pink,
                                      child: CircleAvatar(
                                          maxRadius: 28.0,
                                          backgroundColor: Colors.black,
                                          child: CircleAvatar(
                                            maxRadius: 26.5,
                                            backgroundImage: NetworkImage(
                                                'https://www.siasat.com/wp-content/uploads/2020/06/Anushka-Sharma.jpg'),
                                          )),
                                    ),
                                    Text(
                                      'anushka...',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 90,
                                width: 85,
                                decoration: BoxDecoration(color: Colors.black),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    CircleAvatar(
                                      maxRadius: 30,
                                      backgroundColor: Colors.pink,
                                      child: CircleAvatar(
                                          maxRadius: 28.0,
                                          backgroundColor: Colors.black,
                                          child: CircleAvatar(
                                            maxRadius: 26.5,
                                            backgroundImage: NetworkImage(
                                                'https://www.thesprucepets.com/thmb/3ABKoAPm0Hu4PcWsDH1giawq7ck=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/chinese-dog-breeds-4797219-hero-2a1e9c5ed2c54d00aef75b05c5db399c.jpg'),
                                          )),
                                    ),
                                    Text(
                                      'Pug...',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Divider(color: Colors.white, thickness: .5, height: .5),
            Container(
              height: 65,
              decoration: BoxDecoration(color: Colors.black),
              child: Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    padding: EdgeInsets.all(13),
                    child: CircleAvatar(
                      maxRadius: 20,
                      backgroundImage: NetworkImage(
                        'https://as1.ftcdn.net/v2/jpg/01/64/68/56/1000_F_164685626_QIeuYSPVgK7iYvwPUSqAMvL58pebqcs6.jpg',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5),
                    height: 70,
                    width: 250,
                    alignment: Alignment.centerLeft,
                    child: Text('panhchaneath_ung',
                        style: TextStyle(color: Colors.white, fontSize: 17)),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    height: 70,
                    width: 70,
                    child: Text('...', style: TextStyle(fontSize: 37)),
                  )
                ],
              ),
            ),
            Container(
              height: 320,
              width: double.infinity,
              child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://as1.ftcdn.net/v2/jpg/01/64/68/56/1000_F_164685626_QIeuYSPVgK7iYvwPUSqAMvL58pebqcs6.jpg')),
            ),
            Container(
              height: 55,
              decoration: BoxDecoration(color: Colors.black),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 70,
                    width: 150,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 32,
                        ),
                        Icon(
                          Icons.mode_comment_outlined,
                          size: 30,
                        ),
                        Icon(
                          Icons.telegram_rounded,
                          size: 32,
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 5),
                    height: 55,
                    width: 50,
                    child: Icon(
                      Icons.bookmark_border,
                      size: 35,
                    ),
                    alignment: Alignment.center,
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 12),
              decoration: BoxDecoration(color: Colors.black),
              height: 35,
              width: double.infinity,
              child: Text('Liked by whereavygoes and other',
                  style: TextStyle(fontSize: 15)),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(color: Colors.black),
              height: 40,
              width: double.infinity,
              child: Text(
                  'panhchaneath_ung SERIOUS MODE during SERIOUS RAINY DAY',
                  style: TextStyle(fontSize: 15)),
            ),
            Container(
              height: 50,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.home,
                    size: 32,
                  ),
                  Icon(
                    Icons.search,
                    size: 32,
                  ),
                  Icon(
                    Icons.add_box_outlined,
                    size: 32,
                  ),
                  Icon(
                    Icons.favorite_border,
                    size: 32,
                  ),
                  Icon(
                    Icons.person_4_outlined,
                    size: 32,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
