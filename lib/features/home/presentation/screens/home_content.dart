import 'package:anime_app/features/home/presentation/widgets/anime_list.dart';
import 'package:anime_app/features/home/presentation/widgets/characters_list.dart';
import 'package:anime_app/features/home/presentation/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:anime_app/features/home/presentation/widgets/anime_tabs.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, top: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 22,
        children: [
          const SizedBox(height: 38),
          TextWidget(title: 'Where Anime Comes Alive'),
          const AnimeTabs(),
          SizedBox(height: 350, child: AnimeList()),
          TextWidget(title: 'Top Characters'),
          SizedBox(height: 200, child: CharactersList()),
        ],
      ),
    );
  }
}
