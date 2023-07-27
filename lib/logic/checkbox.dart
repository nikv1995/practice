import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: checkbox());
  }
}

class checkbox extends StatefulWidget {
  const checkbox({Key? key}) : super(key: key);

  @override
  State<checkbox> createState() => _checkboxState();
}

class _checkboxState extends State<checkbox> {
  @override
  var cheak1 = false;
  var cheak2 = false;
  var cheak3 = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Column(
        children: [
          CheckboxListTile(activeColor: Colors.black,
              value: cheak1,
              onChanged: (value) {
                setState(() {
                  cheak1 = value!;
                  if(cheak1==true){
                    print('Male');
                  }
                });
              },
              title: Text('Male')),
          CheckboxListTile(activeColor: Colors.black,
              value: cheak2,
              onChanged: (value) {
                setState(() {
                  cheak2 = value!;
                  if(cheak2==true){
                    print('Female');
                  }
                });
              },
              title: Text('Female')),
          CheckboxListTile(activeColor: Colors.black,
            value: cheak3,
            onChanged: (value) {
              setState(() {
                cheak3 = value!;
                if(cheak3==true){
                  print('Other');
                }
              });
            },
            title: Text('Other'),
          ),
        ],
      ),
    );
  }
}
