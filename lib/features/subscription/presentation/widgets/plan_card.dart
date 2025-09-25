import 'package:flutter/material.dart';
import 'package:anime_app/core/constants/app_colors.dart';

class PlanCard extends StatelessWidget {
  final String title;
  final String price;
  final String subtitle;
  final bool isSelected;
  final VoidCallback onTap;

  const PlanCard({
    super.key,
    required this.title,
    required this.price,
    required this.subtitle,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 120,
        margin: const EdgeInsets.symmetric(horizontal: 15),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.buttonColor : Colors.white,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: Colors.transparent,
            width: 2,
          ),
          boxShadow: [
            if (isSelected)
              BoxShadow(
                color: AppColors.primary.withValues(alpha: 0.3),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
          ],
        ),
        child: Row(
          children: [
            Image.asset(
              'lib/core/assets/images/subscribtion_images/crediet.png',
              height: 108,
              width: 120,
              fit: BoxFit.contain,
            ),
            const SizedBox(width: 20),

            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: isSelected ? Colors.white : AppColors.primaryText,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    price,
                    style: TextStyle(
                      fontSize: 16,
                      color: isSelected ? Colors.white : AppColors.primaryText,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 13,
                      color: isSelected ? Colors.white70 : AppColors.mediumGray,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              width: 26,
              height: 26,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color:Colors.black ,
                  width: 2,
                ),
                color: isSelected ? AppColors.primary :  AppColors.white,
              ),
              child: isSelected
                  ? Icon(
                Icons.check,
                size: 18,
                color: AppColors.buttonColor,
              )
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}
