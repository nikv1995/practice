import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      title: 'Material App',
      home: dialogbox(),
    );
  }
}

class dialogbox extends StatefulWidget {
  const dialogbox({super.key});

  @override
  State<dialogbox> createState() => _dialogboxState();
}

class _dialogboxState extends State<dialogbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Center(
          child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return SimpleDialog(
                      title: Text('Select from below'),
                      shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      elevation: 50,
                      children: [
                        SimpleDialogOption(
                          child: Text('cricket'),
                          onPressed: () {},
                        ),
                        SimpleDialogOption(
                          child: Text('Football'),
                          onPressed: () {},
                        ),
                        SimpleDialogOption(
                          child: Text('Hockey'),
                          onPressed: () {},
                        ),
                        SimpleDialogOption(
                          child: Text('Swiming'),
                          onPressed: () {},
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.end,children: [TextButton(onPressed: () {

                        }, child: Text('Yes')),
                          TextButton(onPressed: () {

                          }, child: Text('No')),],)



                      ],
                    );
                  },
                );
              },
              child: Text('click here')),
        ),
      ),
    );
  }
}
