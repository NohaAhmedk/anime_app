import 'package:flutter/material.dart';
class BackgroundGradient extends StatelessWidget {
  const BackgroundGradient({super.key, required this.backgroundColor});
  final Color backgroundColor ;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            backgroundColor,
            Colors.white,
          ],
        ),
      ),
    );
  }
}
