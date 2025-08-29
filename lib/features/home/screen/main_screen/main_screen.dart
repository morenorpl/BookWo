import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecommerce_mobile/features/features.dart';
import 'package:ecommerce_mobile/preference/preference.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key, required this.name});

  final String name;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late final List<Widget> screen;

  @override
  void initState() {
    super.initState();
    screen = [
      HomeScreen(name: widget.name),
      MyBookshelfScreen(),
      CartScreen(),
      ProfileScreen(name: widget.name),
    ];
  }

  int selectedIndex = 0;

  final List<IconData> unselectedIcons = [
    Icons.home_outlined,
    Icons.bookmark_border,
    Icons.shopping_bag_outlined,
    Icons.person_outline,
  ];

  final List<IconData> selectedIcons = [
    Icons.home_rounded,
    Icons.bookmark,
    Icons.shopping_bag_rounded,
    Icons.person_rounded,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[selectedIndex],

      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: MainColors.secondaryColor,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: const Color.fromARGB(161, 153, 153, 153),
              blurRadius: 10.0,
              spreadRadius: 0.2,
              offset: Offset(0.0, 0.0),
            ),
          ],
        ),
        child: CurvedNavigationBar(
          height: 60,
          color: MainColors.primaryColor,
          backgroundColor: MainColors.primaryColor[600]!,
          items: List.generate(unselectedIcons.length, (index) {
            return Icon(
              selectedIndex == index
                  ? selectedIcons[index]
                  : unselectedIcons[index],
              size: 25,
              color: selectedIndex == index
                  ? MainColors.blackColor
                  : MainColors.primaryColor[800],
            );
          }),
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
