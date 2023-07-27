/*  Create an application with Navigation Drawer with 3 tabs Gallery, audio and video
and design each page with dummy data */

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: MyNavigationDrawer(),
    );
  }
}

class MyNavigationDrawer extends StatefulWidget {
  const MyNavigationDrawer({super.key});

  @override
  State<MyNavigationDrawer> createState() => My_NavigationDrawerState();
}

class My_NavigationDrawerState extends State<MyNavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // here we have created a drawer, showing contents in listview
      drawer: Drawer(
        elevation: 50,
        backgroundColor: Colors.purple,
        child: ListView(
          children: [
            //This is drawer header which appears on top of navigation drawer
            const DrawerHeader(
                decoration: BoxDecoration(color: Colors.purple),
                child: Text("Drawer example",
                    style: TextStyle(color: Colors.white, fontSize: 25))),
            ListTile(
              onTap: () {},
              enabled: true,
              title: Text(
                "Gallery",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),

            ListTile(
              onTap: () {},
              enabled: true,
              title: Text(
                "Audio",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),

            ListTile(
              onTap: () {},
              enabled: true,
              title: Text(
                "Video",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Navigation Drawer"),
      ),
      body: Center(
        child: Text("This is just a random text in body"),
      ),
    );
  }
}
