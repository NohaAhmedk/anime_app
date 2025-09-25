
import 'package:anime_app/core/constants/app_colors.dart';
import 'package:anime_app/features/home/presentation/widgets/background_gradient.dart';
import 'package:anime_app/features/subscription/presentation/widgets/background_stars.dart';
import 'package:flutter/material.dart';

class SubscriptionContent extends StatelessWidget {
  const SubscriptionContent({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children:  [

        BackgroundGradient(
            backgroundColor: AppColors.darkBackground
        ),
        BackgroundStars(
          top: 190,
          left: 245,
          scale: 1.5,
          imagePath: "lib/core/assets/images/subscribtion_images/small_star.png",
        ),
        BackgroundStars(
          top: -130,
          left: -190,
          scale: 1.6,

          imagePath: "lib/core/assets/images/subscribtion_images/big_star.png",
        ),
        BackgroundStars(
          top: 140,
          left: 80,
          scale: 1.8,
          imagePath: "lib/core/assets/images/subscribtion_images/man.png",
        ),


      ],
    );
  }
}
