import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:anime_app/core/constants/app_colors.dart';

class TitleWidget extends StatelessWidget {
  final String titleTop;
  final String titleBottom;
  final double top;
  final double left;

  const TitleWidget({
    super.key,
    required this.titleTop,
    required this.titleBottom,
    required this.top,
    required this.left,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: SizedBox(
        height: 150,
        width: 180,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              titleTop,
              style: TextStyle(
                color: AppColors.blackText,
                fontSize: 48,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.newRocker().fontFamily,
              ),
            ),
            Text(
              titleBottom,
              style: TextStyle(
                color: AppColors.blackText,
                fontSize: 36,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.newRocker().fontFamily,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
