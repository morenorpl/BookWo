import 'package:ecommerce_mobile/features/onboarding/onboarding3_screen.dart';
import 'package:ecommerce_mobile/preference/color.dart';
import 'package:flutter/material.dart';

class Onboarding2Screen extends StatelessWidget {
  const Onboarding2Screen({super.key});

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
              ],
            ),

            SizedBox(height: 48),

            Text(
              'Find Amazing Books That You\'ll Love',
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
                'With a massive library at your fingertips, you can search for any book you want and start reading in moments. From bestsellers to hidden gems, everything is just a tap away.',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: MainColors.blackColor[400],
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Image.asset('assets/images/onboarding_two.png', scale: 3.5),
            const SizedBox(height: 12),

            Row(
              spacing: 20,
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Back'),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) =>
                              Onboarding3Screen(),
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
