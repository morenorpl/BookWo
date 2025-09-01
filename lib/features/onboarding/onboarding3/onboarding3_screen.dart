import 'package:ecommerce_mobile/features/features.dart';
import 'package:ecommerce_mobile/preference/preference.dart';
import 'package:flutter/material.dart';

class Onboarding3Screen extends StatelessWidget {
  const Onboarding3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColors.primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              spacing: 10,
              children: [
                Expanded(
                  child: Container(
                    height: 5,
                    decoration: BoxDecoration(
                      color: MainColors.secondaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 5,
                    decoration: BoxDecoration(
                      color: MainColors.secondaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 5,
                    decoration: BoxDecoration(
                      color: MainColors.secondaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 48),

            Text(
              'Track and Organize Your Journey',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: MainColors.blackColor,
              ),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 12),
            Expanded(
              child: Text(
                'Keep your reading life in one place. Log your progress, create your own bookshelf, and rate books you\'ve finished. Your reading journey, perfectly organized and at your fingertips.',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: MainColors.blackColor[400],
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Image.asset(MainAssets.thirdOnboarding, scale: 3.6),
            const SizedBox(height: 38),

            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AuthenticationScreen(),
                        ),
                      );
                    },
                    child: Text('Get Started'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
