import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class secondscreen extends StatelessWidget {
  const secondscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Groceries Store',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,),)),
    );
  }
}
