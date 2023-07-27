import 'package:flutter/cupertino.dart';

class Media_Query {
  static double h = 0;
  static double w = 0;

  static void Mq_Use(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
  }
}
