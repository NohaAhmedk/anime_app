import 'package:anime_app/core/constants/app_colors.dart';
import 'package:anime_app/features/subscription/presentation/widgets/custom_text.dart';
import 'package:anime_app/features/subscription/presentation/widgets/plan_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'subscription_content.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({super.key});

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  String selectedPlan = "monthly";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SubscriptionContent(),

          Positioned(
            top: 80, left: 125,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Upgrade Plan",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryText,
                  ),
                ),
                InkWell(
                  onTap: () {
                    GoRouter.of(context).go('/detailsscreen');
                  },
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: 36,
                    height: 36,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.close,
                      size: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),

          CustomText(
            top: 380,
            left: 90,
            text: '   Seamless Anime \n Experience, Ad-Free.',
            fontSize: 24,
            color: AppColors.primaryText,
          ),
          CustomText(
            top: 450,
            left: 76,
            text: 'Enjoy unlimited anime streaming without\n'
                '         interruptions.',
            fontSize: 14,
            color: AppColors.mediumGray,
          ),

          Positioned(
            top: 520,
            left: 0,
            right: 0,
            child: Column(
              children: [
                PlanCard(
                  title: "Monthly",
                  price: "\$5 USD /Month",
                  subtitle: "Include Family Sharing",
                  isSelected: selectedPlan == "monthly",
                  onTap: () {
                    setState(() {
                      selectedPlan = "monthly";
                    });
                  },
                ),
                const SizedBox(height: 16),
                PlanCard(
                  title: "Annually",
                  price: "\$50 USD /Year",
                  subtitle: "Include Family Sharing",
                  isSelected: selectedPlan == "annually",
                  onTap: () {
                    setState(() {
                      selectedPlan = "annually";
                    });
                  },
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    // Handle subscription action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 150,
                      vertical: 15,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
