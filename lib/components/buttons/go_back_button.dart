import 'package:ecommerce_mobile/preference/colors/color.dart';
import 'package:flutter/material.dart';

class GoBackButton extends StatelessWidget {
  const GoBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Icon(
        Icons.arrow_back_ios_new_rounded,
        size: 20,
        color: MainColors.primaryColor[800],
      ),
    );
  }
}
