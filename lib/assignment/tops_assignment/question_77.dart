/*  create a Phone call App when user first time open the app it will automatically
generate one dialog which has two option allow,deny if click on allow permission is
grant in settings  */

import 'package:flutter/material.dart';

void main() => runApp(MyApp())

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: MyPhoneCall(),
    );
  }
}

class MyPhoneCall extends StatelessWidget {
  const MyPhoneCall({super.key});

  //  this is for showing alert dialog on opening of screen
  Future<void> _showDialog(BuildContext context) async {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Grant Permissions"),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Click here ---> "),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Allow access"))
            ],
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _showDialog(context),
        builder: (context, snapshot) => Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              title: const Text(
                "Contact List",
                style: TextStyle(fontSize: 25),
              ),
              elevation: 0,
              backgroundColor: Colors.black,
            ),
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer__literals_to_create_immutables
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    title: Center(
                      child: Text(
                        "123456789",
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 5,
                            fontSize: 25),
                      ),
                    ),
                    trailing: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    title: Center(
                      child: Text(
                        "123456789",
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 5,
                            fontSize: 25),
                      ),
                    ),
                    trailing: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    title: Center(
                      child: Text(
                        "123456789",
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 5,
                            fontSize: 25),
                      ),
                    ),
                    trailing: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    title: Center(
                      child: Text(
                        "123456789",
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 5,
                            fontSize: 25),
                      ),
                    ),
                    trailing: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    title: Center(
                      child: Text(
                        "123456789",
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 5,
                            fontSize: 25),
                      ),
                    ),
                    trailing: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    title: Center(
                      child: Text(
                        "123456789",
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 5,
                            fontSize: 25),
                      ),
                    ),
                    trailing: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    title: Center(
                      child: Text(
                        "123456789",
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 5,
                            fontSize: 25),
                      ),
                    ),
                    trailing: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    title: Center(
                      child: Text(
                        "123456789",
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 5,
                            fontSize: 25),
                      ),
                    ),
                    trailing: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    title: Center(
                      child: Text(
                        "123456789",
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 5,
                            fontSize: 25),
                      ),
                    ),
                    trailing: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    title: Center(
                      child: Text(
                        "123456789",
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 5,
                            fontSize: 25),
                      ),
                    ),
                    trailing: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    title: Center(
                      child: Text(
                        "123456789",
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 5,
                            fontSize: 25),
                      ),
                    ),
                    trailing: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    title: Center(
                      child: Text(
                        "123456789",
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 5,
                            fontSize: 25),
                      ),
                    ),
                    trailing: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    title: Center(
                      child: Text(
                        "123456789",
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 5,
                            fontSize: 25),
                      ),
                    ),
                    trailing: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    title: Center(
                      child: Text(
                        "123456789",
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 5,
                            fontSize: 25),
                      ),
                    ),
                    trailing: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    title: Center(
                      child: Text(
                        "123456789",
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 5,
                            fontSize: 25),
                      ),
                    ),
                    trailing: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    title: Center(
                      child: Text(
                        "123456789",
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 5,
                            fontSize: 25),
                      ),
                    ),
                    trailing: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    title: Center(
                      child: Text(
                        "123456789",
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 5,
                            fontSize: 25),
                      ),
                    ),
                    trailing: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    title: Center(
                      child: Text(
                        "123456789",
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 5,
                            fontSize: 25),
                      ),
                    ),
                    trailing: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    title: Center(
                      child: Text(
                        "123456789",
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 5,
                            fontSize: 25),
                      ),
                    ),
                    trailing: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    title: Center(
                      child: Text(
                        "123456789",
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 5,
                            fontSize: 25),
                      ),
                    ),
                    trailing: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    title: Center(
                      child: Text(
                        "123456789",
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 5,
                            fontSize: 25),
                      ),
                    ),
                    trailing: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    title: Center(
                      child: Text(
                        "123456789",
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 5,
                            fontSize: 25),
                      ),
                    ),
                    trailing: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    title: Center(
                      child: Text(
                        "123456789",
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 5,
                            fontSize: 25),
                      ),
                    ),
                    trailing: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.call,
                      color: Colors.white,
                    ),
                    title: Center(
                      child: Text(
                        "123456789",
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 5,
                            fontSize: 25),
                      ),
                    ),
                    trailing: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            )));
  }
}
