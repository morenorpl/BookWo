import 'package:ecommerce_mobile/features/features.dart';
import 'package:ecommerce_mobile/preference/preference.dart';
import 'package:flutter/material.dart';

class Onboarding1Screen extends StatelessWidget {
  const Onboarding1Screen({super.key});

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
                      color: MainColors.primaryColor[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 5,
                    decoration: BoxDecoration(
                      color: MainColors.primaryColor[600],
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 5,
                    decoration: BoxDecoration(
                      color: MainColors.primaryColor[600],
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 48),

            Text(
              'Hey there! Welcome to BookWo ',
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
                'Dive into a world of stories! Discover new authors, explore different genres, and find your next favorite book with personalized recommendations.',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: MainColors.blackColor[400],
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Image.asset('assets/images/onboarding_one.png', scale: 3.8),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) =>
                              Onboarding2Screen(),
                          transitionDuration: Duration(seconds: 0),
                        ),
                      );
                    },
                    child: Text('Next'),
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
