
import 'package:flutter/material.dart';

class BackgroundStars extends StatelessWidget {
  const BackgroundStars({super.key, required this.top, required this.left, required this.imagePath, required this.scale});
  final int top;
  final int left;
  final String imagePath;
  final double scale ;




  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top.toDouble(),
      left: left.toDouble(),
      child: Image.asset(
        imagePath,
       scale: scale,
      ),
    );
  }
}
