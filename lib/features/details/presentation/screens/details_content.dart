import 'package:anime_app/features/details/presentation/widgets/category_chip.dart';
import 'package:anime_app/features/details/presentation/widgets/circle_design_widget.dart';
import 'package:anime_app/features/details/presentation/widgets/description_series.dart';
import 'package:anime_app/features/details/presentation/widgets/header_image_widget.dart';
import 'package:anime_app/features/details/presentation/widgets/info_item.dart';
import 'package:anime_app/features/details/presentation/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class DetailsContent extends StatelessWidget {
  const DetailsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            children: [
              //
              HeaderImageWidget(
                imagePath:
                'lib/core/assets/images/details_image/demon_slayer.png',
              ),

              const SizedBox(height: 110),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    // Categories
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CategoryChip(label: 'Dark Fantasy'),
                        SizedBox(width: 8),
                        CategoryChip(label: 'Action'),
                        SizedBox(width: 8),
                        CategoryChip(label: 'Adventure'),
                      ],
                    ),
                    const SizedBox(height: 14),
                    Divider(color: Colors.grey, height: 25, thickness: 0.5),

                    // Info Row
                    Row(
                      mainAxisSize:  MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        InfoItem(
                            icon: Icons.remove_red_eye_sharp,
                            text: '3.2M views'),
                        InfoItem(
                            icon: Icons.waving_hand_outlined, text: '2K clap'),
                        InfoItem(
                            icon: Iconsax.video_circle, text: '4 Seasons'),
                      ],
                    ),
                    Divider(color: Colors.grey, height: 20, thickness: 0.5),

                    // Description
                     Row(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Image.asset('lib/core/assets/images/details_image/fire.png',
                           scale: 2,
                         ),
                         Expanded(
                           child: DescriptionSeries(
                            description:
                            'Demon Slayer: Kimetsu no Yaiba follows Tanjiro, a kind-hearted boy who becomes a demon slayer after his family is slaughtered and his sister is turned into a demon. Experience breathtaking battles, stunning animation, and an emotional journey of courage and hope.',
                                               ),
                         ),
                       ],
                     ),
                    const SizedBox(height: 50),
                  ],
                ),
              ),
            ],
          ),

          CircleDesignWidget(
            top: 490,
            left: 110,
            height: 152,
            width: 185,
            circleImage: 'lib/core/assets/images/details_image/circle.png',
          ),
          CircleDesignWidget(
            top: 476,
            left: 146,
            height: 178,
            width: 188,
            circleImage:
            'lib/core/assets/images/details_image/red_semi_circle.png',
          ),
          TitleWidget(
            top: 485,
            left: 115,
            titleTop: 'DEMON',
            titleBottom: 'SLAYER',
          ),
        ],
      ),
    );
  }
}
