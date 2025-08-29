import 'package:ecommerce_mobile/preference/preference.dart';
import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key, required this.name});

  final String? name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        spacing: 24,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: MainColors.blackColor,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(
                      //harusnya image tapi nanti aja
                      Icons.account_circle_rounded,
                      size: 40,
                      color: MainColors.primaryColor,
                    ),
                  ),
                ],
              ),
              Row(
                spacing: 20,
                children: [
                  Icon(
                    Icons.notifications_rounded,
                    size: 25,
                    color: MainColors.blackColor,
                  ),
                  Icon(
                    Icons.settings_rounded,
                    size: 25,
                    color: MainColors.blackColor,
                  ),
                ],
              ),
            ],
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 4,
            children: [
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 32,
                    height: 1.1,
                    fontWeight: FontWeight.bold,
                    color: MainColors.blackColor,
                  ),
                  children: <TextSpan>[
                    TextSpan(text: 'What\'s up, '),
                    TextSpan(
                      text: '$name!',
                      style: TextStyle(
                        color: MainColors.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(text: '\nwhat genre are you feeling today? '),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
