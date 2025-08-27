import 'package:ecommerce_mobile/features/onboarding/onboarding1/onboarding1_screen.dart';
import 'package:ecommerce_mobile/features/onboarding/authentication/authentication_screen.dart';
import 'package:ecommerce_mobile/features/splash/screen/splash_screen.dart';
import 'package:ecommerce_mobile/features/home/screen/home_screen/home_screen.dart';
import 'package:ecommerce_mobile/preference/colors/color.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.light(),
        fontFamily: 'Josefin Sans',
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 14),
            backgroundColor: MainColors.blackColor,
            foregroundColor: MainColors.secondaryColor,
            textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(15),
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 14),
            side: BorderSide(width: 2, color: MainColors.blackColor),
            textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            foregroundColor: MainColors.blackColor,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: MainColors.secondaryColor[600],
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15),
          ),
          labelStyle: TextStyle(color: MainColors.secondaryColor[800]),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: MainColors.primaryColor,
          centerTitle: true,
          toolbarHeight: 100,
          surfaceTintColor: MainColors.primaryColor,
          leadingWidth: 120,
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
