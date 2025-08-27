import 'package:ecommerce_mobile/features/home/screen/home_screen/section/body_section.dart';
import 'package:ecommerce_mobile/features/home/screen/home_screen/section/header_section.dart';
import 'package:ecommerce_mobile/preference/preference.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key, required this.name});

  final String? name;
  final Color myTextColor = Colors.blue;

  final List<String> category = [
    'Fantasy',
    'Action & Adventure',
    'Horror',
    'Romance',
    'Mystery',
    'Science Fiction',
    'History',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColors.secondaryColor,
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 48),
        children: [
          HeaderSection(name: name),

          const SizedBox(height: 24.0),

          BodySection(category: category),
        ],
      ),
    );
  }
}