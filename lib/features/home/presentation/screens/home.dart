import 'package:anime_app/core/constants/app_colors.dart';
import 'package:anime_app/features/home/presentation/screens/home_content.dart';
import 'package:anime_app/features/home/presentation/widgets/background_gradient.dart';
import 'package:anime_app/features/home/presentation/widgets/top_right_image.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          BackgroundGradient( backgroundColor: AppColors.background),
          TopRightImage(),
          HomeContent(),

        ],
      ),
    );
  }
}
