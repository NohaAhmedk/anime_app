import 'package:flutter/material.dart';

import 'character_card.dart';

class CharactersList extends StatelessWidget {
  CharactersList({super.key});
  final List<Map<String, String>> characterData = [
    {
      "nameCharacter": "Gon Freecss",
      "series": "Hunter x Hunter",
      "imagePath": "lib/core/assets/images/character_images/Gon_Freecss.png",
    },
    {
      "nameCharacter": "Naruto Uzumaki ",
      "series": "Naruto",
      "imagePath": "lib/core/assets/images/character_images/Naruto_Uzumaki.png",
    },
    {
      "nameCharacter": "Luffy",
      "series": "One Piece",
      "imagePath": "lib/core/assets/images/character_images/Luffy.png",
    },
    {
      "nameCharacter": "Goku",
      "series": "Dragon Ball",
      "imagePath": "lib/core/assets/images/character_images/Goku.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 8),
      scrollDirection: Axis.horizontal,
      itemCount: characterData.length,
      itemBuilder: (context, index) {
        final anime = characterData[index];
        return Padding(
          padding: const EdgeInsets.only(right: 12),
          child: CharacterCard(
            nameCharacter: anime["nameCharacter"]!,
            series: anime["series"]!,
            imagePath: anime["imagePath"]!,
          ),
        );
      },
    );
  }
}
