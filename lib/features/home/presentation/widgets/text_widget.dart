
import 'package:anime_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key, required this.title});
 final String title ;
  @override
  Widget build(BuildContext context) {
    return  Text(
      title,
      style: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
        color: AppColors.primaryText,
      ),
    );
  }
}
