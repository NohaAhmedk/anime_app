import 'package:anime_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AnimeTabs extends StatefulWidget {
  const AnimeTabs({super.key});

  @override
  State<AnimeTabs> createState() => _AnimeTabsState();
}

class _AnimeTabsState extends State<AnimeTabs> {
  final List<String> tabs = [
    "All",
    "Popular",
    "Trending",
    "New Releases",
    "Top Rated",
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: tabs.length,
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          final isSelected = selectedIndex == index;
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: isSelected ? AppColors.primary : Colors.white,
                borderRadius: BorderRadius.circular(20),

              ),
              child: Text(
                tabs[index],
                style: TextStyle(
                  color: isSelected ? Colors.white : AppColors.primary,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
