import 'package:flutter/material.dart';

import 'custom_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: customW(),
    );
  }
}

class customW extends StatefulWidget {
  const customW({super.key});

  @override
  State<customW> createState() => _customWState();
}

class _customWState extends State<customW> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: customB(
          B_height: 50,
          B_width: 100,
          B_text: 'Click Here',
          B_radius: 20,
          B_color: Colors.yellow,
          B_fontsize: 17,
          B_fontcolor: Colors.black,
          onpressed: () {
            print('hello how are you');
          },
        ),
      ),
    );
  }
}
