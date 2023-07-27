import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nikunj_project/assignment/food_cafe_app/cart_screen.dart';

import 'item_widget.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(
          height: 45,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(0xffEEEEEEFF)),
          child: TextFormField(
              decoration: const InputDecoration(
            suffixIcon: Icon(Icons.search),
            contentPadding: EdgeInsets.all(10),
            hintText: 'Search in Food Cafe',
            hintStyle: TextStyle(fontSize: 18),
            border: InputBorder.none,
          )),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: const [
            menu_item(
                item_name: 'Coffee',
                item_price: 100,
                item_image:
                    'https://images.pexels.com/photos/2396220/pexels-photo-2396220.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
            Divider(height: 25, thickness: 0.5),
            menu_item(
                item_name: 'Cold Coffee',
                item_price: 120,
                item_image:
                    'https://images.pexels.com/photos/1078773/pexels-photo-1078773.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
            Divider(height: 25, thickness: 0.5),
            menu_item(
                item_name: 'Tea',
                item_price: 80,
                item_image:
                    'https://images.pexels.com/photos/17391565/pexels-photo-17391565/free-photo-of-drink-tea-chai-tea-bag.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
            Divider(height: 25, thickness: 0.5),
            menu_item(
                item_name: 'Green Tea',
                item_price: 80,
                item_image:
                    'https://images.pexels.com/photos/1417945/pexels-photo-1417945.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
            Divider(height: 25, thickness: 0.5),
            menu_item(
                item_name: 'Veg Sandwiche',
                item_price: 125,
                item_image:
                    'https://images.pexels.com/photos/6605653/pexels-photo-6605653.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
            Divider(height: 25, thickness: 0.5),
            menu_item(
                item_name: 'Veg Burger',
                item_price: 115,
                item_image:
                    'https://images.pexels.com/photos/1633578/pexels-photo-1633578.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
            Divider(height: 25, thickness: 0.5),
            menu_item(
                item_name: 'Noodles',
                item_price: 150,
                item_image:
                    'https://images.pexels.com/photos/1279330/pexels-photo-1279330.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
            Divider(height: 25, thickness: 0.5),
            menu_item(
                item_name: 'Pasta',
                item_price: 160,
                item_image:
                    'https://images.pexels.com/photos/803963/pexels-photo-803963.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
            Divider(height: 25, thickness: 0.5),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
          onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => cart_screen(),
              )),
          child: Icon(Icons.shopping_basket,color: Colors.white,)),
    );
  }
}
