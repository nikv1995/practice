import 'package:flutter/material.dart';
import 'package:nikunj_project/widget/custom_widget/widget.dart';


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
        child: custom_B(
          B_height: 60,
          B_width: 120,
          B_text: 'Click Here',
          B_radius: 15,
          B_color: Colors.grey,
          B_fontsize: 20,
          B_fontcolor: Colors.black,
          onpressed: () {
            print('hello how are you');
          },
        ),
      ),
    );
  }
}
