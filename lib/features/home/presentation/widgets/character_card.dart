import 'package:flutter/material.dart';

class CharacterCard extends StatelessWidget {
  final String nameCharacter;
  final String series;
  final String imagePath;
  const CharacterCard({
    super.key,
    required this.nameCharacter,
    required this.series,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(80),
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
            height: 120,
            width: 120,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          nameCharacter,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        Text(series, style: const TextStyle(fontSize: 14, color: Colors.grey)),
      ],
    );
  }
}
