import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nikunj_project/fruite_app/detailpage.dart';
import 'package:nikunj_project/fruite_app/media_query.dart';
import 'package:nikunj_project/fruite_app/model_class.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  static List<String> FruitsName = ['Apple', 'Bananna', 'Mango', 'Pineapple'];
  static List<String> FruitsDes = [
    'Apple is Good for Health',
    'Bananna is Good for Health',
    'Mango is Good for Health',
    'Pineapple is Good for Health'
  ];
  static List<String> FruitsImage = [
    'assets/images/apple.png',
    'assets/images/banana.png',
    'assets/images/mango.png',
    'assets/images/pineapple.png',
  ];

  final List<FruitsModel> FruitsDetail = List.generate(
      FruitsName.length,
      (index) => FruitsModel(
          name: FruitsName[index],
          description: FruitsDes[index],
          image: FruitsImage[index]));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fruit App')),
      body: ListView.builder(
        itemCount: FruitsDetail.length,
        padding: EdgeInsets.all(10),
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            child: ListTile(
              leading: SizedBox(

                  width: Media_Query.w*.2,
                  child: Image(image: AssetImage(FruitsDetail[index].image))),
              title: Text(FruitsDetail[index].name),
              subtitle: Text(FruitsDetail[index].description),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailPage(
                            Detail: FruitsDetail[index],
                          ))),
            ),
          );
        },
      ),
    );
  }
}
