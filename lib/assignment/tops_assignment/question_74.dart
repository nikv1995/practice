/*Create an application like gmail and display Screens according to user selection and
design each page with dummy data*/


import 'package:flutter/material.dart';

void main() => runApp(MyApp())

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Gmailapp(),
    );
  }
}

class Gmailapp extends StatefulWidget {
  Gmailapp({super.key});

  @override
  State<Gmailapp> createState() => _GmailappState();
}

class _GmailappState extends State<Gmailapp> {
  // Declaring global key for calling navigation drawer in body without appbar
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      drawer: Drawer(
        elevation: 50,
        backgroundColor: Color.fromARGB(255, 77, 76, 76),
        child: ListView(
          children: [
            //This is drawer header which appears on top of navigation drawer
            SizedBox(
              height: 60,
              child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 77, 76, 76),
                  ),
                  child: Text("Gmail",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500))),
            ),
            ListTile(
              title: Text(
                "All Inboxes",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),

            ListTile(
              title: Text(
                "Inbox",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),

            ListTile(
              title: Text(
                "Important",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),

            ListTile(
              title: Text(
                "Starred",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),

            ListTile(
              title: Text(
                "Sent",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),

            ListTile(
              title: Text(
                "Scheduled",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            )
          ],
        ),
      ),
      //appBar: AppBar(),
      backgroundColor: Color.fromARGB(255, 46, 46, 46),
      body: Column(
        children: [
          SizedBox(height: 55),
          Center(
              child: SizedBox(
            height: 50,
            width: 390,
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 73, 73, 73),
                  borderRadius: BorderRadius.circular(30)),
              child: TextFormField(
                style: TextStyle(color: Colors.white, fontSize: 20),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search in mail",
                    hintStyle: TextStyle(color: Colors.white, fontSize: 20),
                    prefixIcon: InkWell(
                      //This is for opening drawer on tap event without adding appbar
                      onTap: () {
                        _globalKey.currentState?.openDrawer();
                      },
                      child: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                    suffixIcon: Icon(
                      Icons.account_circle_rounded,
                      color: Colors.white,
                      size: 30,
                    )),
              ),
            ),
          )),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              children: [
                Text(
                  "Inbox",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.purple),
                    child: Center(
                        child: Text(
                      "A",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ))),
                SizedBox(
                  width: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Linkedin Job Alerts",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text("Flutter Developer roles: 1 new job",
                          style: TextStyle(color: Colors.white)),
                      Text("Senior Flutter developer / Tech Lead",
                          style: TextStyle(color: Colors.grey))
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text("11.52", style: TextStyle(color: Colors.white)),
                    Icon(
                      Icons.star_border,
                      color: Colors.white,
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.purple),
                    child: Center(
                        child: Text(
                      "A",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ))),
                SizedBox(
                  width: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Linkedin Job Alerts",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text("Flutter Developer roles: 1 new job",
                          style: TextStyle(color: Colors.white)),
                      Text("Senior Flutter developer / Tech Lead",
                          style: TextStyle(color: Colors.grey))
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text("11.52", style: TextStyle(color: Colors.white)),
                    Icon(
                      Icons.star_border,
                      color: Colors.white,
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.purple),
                    child: Center(
                        child: Text(
                      "A",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ))),
                SizedBox(
                  width: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Linkedin Job Alerts",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text("Flutter Developer roles: 1 new job",
                          style: TextStyle(color: Colors.white)),
                      Text("Senior Flutter developer / Tech Lead",
                          style: TextStyle(color: Colors.grey))
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text("11.52", style: TextStyle(color: Colors.white)),
                    Icon(
                      Icons.star_border,
                      color: Colors.white,
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.purple),
                    child: Center(
                        child: Text(
                      "A",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ))),
                SizedBox(
                  width: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Linkedin Job Alerts",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text("Flutter Developer roles: 1 new job",
                          style: TextStyle(color: Colors.white)),
                      Text("Senior Flutter developer / Tech Lead",
                          style: TextStyle(color: Colors.grey))
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text("11.52", style: TextStyle(color: Colors.white)),
                    Icon(
                      Icons.star_border,
                      color: Colors.white,
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.purple),
                    child: Center(
                        child: Text(
                      "A",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ))),
                SizedBox(
                  width: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Linkedin Job Alerts",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text("Flutter Developer roles: 1 new job",
                          style: TextStyle(color: Colors.white)),
                      Text("Senior Flutter developer / Tech Lead",
                          style: TextStyle(color: Colors.grey))
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text("11.52", style: TextStyle(color: Colors.white)),
                    Icon(
                      Icons.star_border,
                      color: Colors.white,
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.purple),
                    child: Center(
                        child: Text(
                      "A",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ))),
                SizedBox(
                  width: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Linkedin Job Alerts",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text("Flutter Developer roles: 1 new job",
                          style: TextStyle(color: Colors.white)),
                      Text("Senior Flutter developer / Tech Lead",
                          style: TextStyle(color: Colors.grey))
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text("11.52", style: TextStyle(color: Colors.white)),
                    Icon(
                      Icons.star_border,
                      color: Colors.white,
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.purple),
                    child: Center(
                        child: Text(
                      "A",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ))),
                SizedBox(
                  width: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Linkedin Job Alerts",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text("Flutter Developer roles: 1 new job",
                          style: TextStyle(color: Colors.white)),
                      Text("Senior Flutter developer / Tech Lead",
                          style: TextStyle(color: Colors.grey))
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text("11.52", style: TextStyle(color: Colors.white)),
                    Icon(
                      Icons.star_border,
                      color: Colors.white,
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.purple),
                    child: Center(
                        child: Text(
                      "A",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ))),
                SizedBox(
                  width: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Linkedin Job Alerts",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text("Flutter Developer roles: 1 new job",
                          style: TextStyle(color: Colors.white)),
                      Text("Senior Flutter developer / Tech Lead",
                          style: TextStyle(color: Colors.grey))
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text("11.52", style: TextStyle(color: Colors.white)),
                    Icon(
                      Icons.star_border,
                      color: Colors.white,
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.purple),
                    child: Center(
                        child: Text(
                      "A",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ))),
                SizedBox(
                  width: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Linkedin Job Alerts",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text("Flutter Developer roles: 1 new job",
                          style: TextStyle(color: Colors.white)),
                      Text("Senior Flutter developer / Tech Lead",
                          style: TextStyle(color: Colors.grey))
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text("11.52", style: TextStyle(color: Colors.white)),
                    Icon(
                      Icons.star_border,
                      color: Colors.white,
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.purple),
                    child: Center(
                        child: Text(
                      "A",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ))),
                SizedBox(
                  width: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Linkedin Job Alerts",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text("Flutter Developer roles: 1 new job",
                          style: TextStyle(color: Colors.white)),
                      Text("Senior Flutter developer / Tech Lead",
                          style: TextStyle(color: Colors.grey))
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text("11.52", style: TextStyle(color: Colors.white)),
                    Icon(
                      Icons.star_border,
                      color: Colors.white,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
