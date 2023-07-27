import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      title: 'Material App',
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.all(18),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 80),
                height: 180,
                width: double.infinity,
                child: Text('Find Your \nConsultation',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.w500)),
              ),
              Container(
                padding: EdgeInsets.only(left: 25),
                height: 48,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xFFE1E1E1FF),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      size: 28,
                    ),
                    Text('  Search',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF646464FF),
                        ))
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                alignment: Alignment.centerLeft,
                height: 55,
                width: double.infinity,
                child: Text('Categories',
                    style:
                        TextStyle(fontSize: 26, fontWeight: FontWeight.w500)),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                height: 50,
                width: double.infinity,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Text('Adults',
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.orange,
                                fontWeight: FontWeight.w600)),
                        height: 37,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Color(0xFFFDBD81),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text('Childrens',
                            style: TextStyle(
                                fontSize: 17,
                                color: Color(0xFF646464FF),
                                fontWeight: FontWeight.w600)),
                        height: 37,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text('Womens',
                            style: TextStyle(
                                fontSize: 17,
                                color: Color(0xFF646464FF),
                                fontWeight: FontWeight.w600)),
                        height: 37,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text('Mens',
                            style: TextStyle(
                                fontSize: 17,
                                color: Color(0xFF646464FF),
                                fontWeight: FontWeight.w600)),
                        height: 37,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text('Old      ',
                            style: TextStyle(
                                fontSize: 17,
                                color: Color(0xFF646464FF),
                                fontWeight: FontWeight.w600)),
                        height: 37,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 250,
                width: double.infinity,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        margin: EdgeInsets.all(8),
                        height: 220,
                        width: 135,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 10, left: 10),
                              height: 60,
                              width: 130,
                              child: Text('Cough & \nCold',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 21)),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              height: 22,
                              width: 130,
                              child: Text('10 Doctors',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500)),
                            ),
                            Container(
                              padding: EdgeInsets.only(bottom: 5),
                              alignment: Alignment.bottomCenter,
                              child: Image.asset(
                                  'assets/images/beautiful-young-woman-has-toothache-young-sad-woman-suffering-from-tooth-pain-caries-girl-having-toothache-dental-health-care-concept_222877-10191-removebg-preview.png',
                                  fit: BoxFit.cover),
                              height: 120,
                              width: 130,
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFFDBD81),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        height: 220,
                        width: 135,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 10, left: 10),
                              height: 60,
                              width: 130,
                              child: Text('Heart\nSpecialist',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 21)),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              height: 22,
                              width: 130,
                              child: Text('17 Doctors',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500)),
                            ),
                            Container(
                              padding: EdgeInsets.only(bottom: 5),
                              alignment: Alignment.bottomCenter,
                              child: Image.network(
                                  'https://www.ahdubai.com//uploads/contents/16128635661593696444blog-removebg-preview-Recovered.webp'),
                              height: 120,
                              width: 130,
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFf4a384),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        height: 220,
                        width: 135,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 10, left: 10),
                              height: 60,
                              width: 130,
                              child: Text('Teeth\nSpecialist',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 21)),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              height: 22,
                              width: 130,
                              child: Text('27 Doctors',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500)),
                            ),
                            Container(
                              padding: EdgeInsets.only(bottom: 5),
                              alignment: Alignment.bottomCenter,
                              child: Image.network(
                                  'https://www.pngall.com/wp-content/uploads/8/Dental-Cleaning-PNG-Free-Download.png'),
                              height: 120,
                              width: 130,
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFe5c8e4),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                height: 55,
                width: double.infinity,
                child: Text('Doctors',
                    style:
                        TextStyle(fontSize: 28, fontWeight: FontWeight.w500)),
              ),
              Container(
                padding: EdgeInsets.all(8),
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xFFFFE5F9),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Image.network(
                          'https://www.freepnglogos.com/uploads/doctor-png/png-woman-doctor-transparent-woman-doctor-images-40.png'),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Color(0xFFFDBD81),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    Container(
                      height: 65,
                      width: 180,
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            height: 30,
                            width: 180,
                            child: Text('Dr. Stefeni Albert',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFFFDBD81))),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            height: 30,
                            width: 180,
                            child: Text('Heart Specialist',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 65,
                      decoration: BoxDecoration(
                          color: Color(0xFFFDBD81),
                          borderRadius: BorderRadius.circular(18)),
                      child: Text('Call',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500)),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
