import 'package:anime_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:anime_app/features/home/presentation/screens/home.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _selectedIndex = 0;

  final List<IconData> _icons = [
    Iconsax.home_1_copy,
    Iconsax.book_copy,
    Iconsax.search_normal_1_copy,
    Icons.language,
    Iconsax.setting_copy,
  ];

  final List<String> _labels = [
    "Home",
    "Library",
    "Search",
    "Explore",
    "Settings",
  ];

  final List<Widget> _screens = const [
    Home(),
    Center(child: Text("📚 Library Page", style: TextStyle(fontSize: 24))),
    Center(child: Text("🔍 Search Page", style: TextStyle(fontSize: 24))),
    Center(child: Text("🌍 Explore Page", style: TextStyle(fontSize: 24))),
    Center(child: Text("⚙️ Settings Page", style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        decoration: const BoxDecoration(
          color: Color(0xFFF7F6FB),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(_icons.length, (index) {
            final isSelected = _selectedIndex == index;
            return GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                padding:
                const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                decoration: BoxDecoration(
                  color: isSelected
                      ? AppColors.primary
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Icon(
                      _icons[index],
                      color: isSelected ? Colors.white : Colors.grey,
                    ),
                    if (isSelected) ...[
                      const SizedBox(width: 6),
                      Text(
                        _labels[index],
                        style: const TextStyle(color: Colors.white),
                      ),
                    ]
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
