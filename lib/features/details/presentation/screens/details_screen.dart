import 'package:anime_app/core/constants/app_colors.dart';
import 'package:anime_app/features/details/presentation/screens/details_content.dart';
import 'package:anime_app/features/details/presentation/widgets/bottom_nav_buttons.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pyrpel,
      body: const DetailsContent(),
      bottomNavigationBar: const BottomNavButtons(),
    );
  }
}
