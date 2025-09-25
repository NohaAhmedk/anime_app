import 'package:flutter/material.dart';

class DescriptionSeries extends StatelessWidget {
  final String description;

  const DescriptionSeries({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
      child: Text(
        description,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          height: 1.5,
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
