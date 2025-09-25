import 'package:flutter/material.dart';

class CircleDesignWidget extends StatelessWidget {
  final String circleImage;
  final double top;
  final double left;
  final double height;
  final double width;

  const CircleDesignWidget({
    super.key,
    required this.circleImage,
    required this.top,
    required this.left,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(circleImage),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
