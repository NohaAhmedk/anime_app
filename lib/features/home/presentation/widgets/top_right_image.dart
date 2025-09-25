import 'package:flutter/material.dart';

class TopRightImage extends StatelessWidget {
  const TopRightImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -140,
      right: -285,
      child: Image.asset(
        "lib/core/assets/images/subscribtion_images/small_star.png",
      ),
    );
  }
}
