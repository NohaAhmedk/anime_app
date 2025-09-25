import 'package:flutter/material.dart';

import 'anime_card.dart';

class AnimeList extends StatelessWidget {
  AnimeList({super.key});

  final List<Map<String, String>> animeData = [
    {"title": "Detective Conan", "genre": "Mystery", "image": "lib/core/assets/images/anime_images/conan.png"},
    {"title": "Hunter x Hunter", "genre": "Adventure", "image": "lib/core/assets/images/anime_images/hunter.png"},
    {"title": "Dragon Ball", "genre": "Action", "image": "lib/core/assets/images/anime_images/dragon.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      padding: const EdgeInsets.only(top: 8),
      scrollDirection: Axis.horizontal,
      itemCount: animeData.length,
      itemBuilder: (context, index) {
        final anime = animeData[index];
        return
           Padding(
             padding: const EdgeInsets.only(right: 12),
             child: AnimeCard(
              title: anime["title"]!,
              genre: anime["genre"]!,
              image: anime["image"]!,
             ),
           );

      },
    );
  }
}
