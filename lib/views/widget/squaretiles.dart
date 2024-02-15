import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  IconData? icon;
  Color? color;
  Color? iconcolor;
  double? iconsize;
  SquareTile(
      {super.key,
      required this.icon,
      required this.color,
      required this.iconcolor,
      required this.iconsize});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Icon(
          icon,
          size: iconsize,
          color: iconcolor,
        ),
      ),
    );
  }
}
