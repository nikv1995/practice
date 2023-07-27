import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class customB extends StatefulWidget {
  final double B_height;
  final double B_width;
  final B_text;
  final double B_radius;
  final Color B_color;
  final double B_fontsize;
  final Color B_fontcolor;
  final VoidCallback onpressed;

  const customB(
      {super.key,
      required this.B_height,
      required this.B_width,
      this.B_text,
      required this.B_radius,
      required this.B_color,
      required this.B_fontsize,
      required this.B_fontcolor,
      required this.onpressed});

  @override
  State<customB> createState() => _customBState();
}

class _customBState extends State<customB> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 20,
      borderRadius: BorderRadius.circular(widget.B_radius),
      child: InkWell(
        onTap: widget.onpressed,
        child: Container(
          alignment: Alignment.center,
          height: widget.B_height,
          width: widget.B_width,
          decoration: BoxDecoration(
              color: widget.B_color,
              borderRadius: BorderRadius.circular(widget.B_radius)),
          child: Text(widget.B_text,
              style: TextStyle(
                  fontSize: widget.B_fontsize,
                  color: widget.B_fontcolor,
                  fontWeight: FontWeight.w500)),
        ),
      ),
    );
  }
}
