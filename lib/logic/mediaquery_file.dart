import 'package:flutter/cupertino.dart';

class MediaQuery_use {
  static double h = 0;
  static double w = 0;

  static void OnInit(BuildContext context){
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
  }
}
