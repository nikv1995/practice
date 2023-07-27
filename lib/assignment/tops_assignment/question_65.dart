// Create custom toolbar as per given below design Create toolbar with spinner and search functionality

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Container(
              width: 350,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(13)),
              child: TextFormField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search),
                    hintText: 'Search',
                    hintStyle: TextStyle(fontSize: 20),
                    contentPadding: EdgeInsets.all(7),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13))),
              )),
          actions: [
            PopupMenuButton(
              itemBuilder: (context) {
                return [
                  PopupMenuItem(child: Text('My Account')),
                  PopupMenuItem(child: Text('Setting')),
                  PopupMenuItem(child: Text('Logout'))
                ];
              },
            )
          ],
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
