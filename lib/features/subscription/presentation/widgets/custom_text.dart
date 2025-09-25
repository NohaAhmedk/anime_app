import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.text, required this.fontSize, required this.color, required this.top, required this.left});
 final String text ;
 final double fontSize ;
  final Color color ;
  final double top;
  final double left;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: Text(text,
        style: TextStyle(
          textBaseline: TextBaseline.alphabetic,
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: color,

        ),
      ),
    );
  }
}
