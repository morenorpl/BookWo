import 'package:ecommerce_mobile/preference/color.dart';
import 'package:flutter/material.dart';

class GoBackButton extends StatelessWidget {
  const GoBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
        decoration: BoxDecoration(
          color: MainColors.blackColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 12,
                color: MainColors.whiteColor,
              ),
              SizedBox(width: 4),
              Text('Go Back', style: TextStyle(color: MainColors.whiteColor)),
            ],
          ),
        ),
      ),
    );
  }
}
