import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var nameController = TextEditingController();
  var data = 'not set';

  @override
  void initState() {
    super.initState();

    getdata();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                height: 50,
                width: 200,
                child: TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  )),
                ),
              ),
              SizedBox(height: 25),
              ElevatedButton(
                  onPressed: () async {
                    var prefs = await SharedPreferences.getInstance();

                    prefs.setString('txt', nameController.text.toString());
                  },
                  child: Text('Click Here')),
              SizedBox(height: 25),
              SizedBox(height: 25),
              Text(data)
            ],
          ),
        ),
      ),
    );
  }

  void getdata() async {
    var prefs = await SharedPreferences.getInstance();

    var getdata = prefs.getString('txt')!;

    data = getdata != null ? getdata : 'not set';

    setState(() {});
  }
}
