import 'package:anime_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavButtons extends StatelessWidget {
  const BottomNavButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: const BoxDecoration(
        color: Color(0xFF1A1035), // dark background
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color:AppColors.gray,
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.timer, color: Colors.white,
                size: 30),
                label: const Text(
                  'Preview',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextButton.icon(
                onPressed: () {
                  GoRouter.of(context).go('/subscriptionscreen');
                },
                icon: const Icon(Icons.remove_red_eye_sharp,
                    color: Colors.white,
                  size: 30,
                ),
                label: const Text(
                  'Watch Now',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
