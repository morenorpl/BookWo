import 'package:ecommerce_mobile/features/features.dart';
import 'package:ecommerce_mobile/features/home/widgets/items/card_continue_read.dart';
import 'package:ecommerce_mobile/preference/preference.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColors.secondaryColor,
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 48, horizontal: 24),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    '29',
                    style: TextStyle(
                      fontSize: 18,
                      color: MainColors.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Books Read',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: MainColors.blackColor,
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(0),
                decoration: BoxDecoration(
                  border: Border.all(color: MainColors.blackColor, width: 2),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(
                  //harusnya image tapi nanti aja
                  Icons.account_circle_rounded,
                  size: 80,
                  color: MainColors.primaryColor,
                ),
              ),
              Column(
                children: [
                  Text(
                    '60',
                    style: TextStyle(
                      fontSize: 18,
                      color: MainColors.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Books Saved',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: MainColors.blackColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 12.0),
          Column(
            children: [
              Text(
                'Mark',
                style: TextStyle(
                  fontSize: 24,
                  color: MainColors.blackColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 6.0),

              Row(
                spacing: 5,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: MainColors.primaryColor,
                  ),
                  Text(
                    'Jakarta',
                    style: TextStyle(
                      fontSize: 14,
                      color: MainColors.primaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 24.0),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Continue Reading',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: MainColors.blackColor,
                ),
              ),
              Row(
                spacing: 5,
                children: [
                  Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: MainColors.secondaryColor[800],
                    size: 20,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: MainColors.secondaryColor[800],
                    size: 20,
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 24.0),

          Row(
            spacing: 23,
            children: [
              CardContinueRead(
                item: CardContinueReadModel(
                  bgColor: null,
                  imagePath: MainAssets.book1,
                  nameBook: 'To Kill a Mockingbird',
                  nameAuthor: 'Harper Lee',
                  price: '2,000',
                  readProgress: '90%',
                ),
              ),
              CardContinueRead(
                item: CardContinueReadModel(
                  bgColor: null,
                  imagePath: MainAssets.book2,
                  nameBook: 'The Name of the Wind',
                  nameAuthor: 'Patrick Rothfuss',
                  price: '8,000',
                  readProgress: '76%',
                ),
              ),
            ],
          ),

          const SizedBox(height: 48.0),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Your Saved Library',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: MainColors.blackColor,
                ),
              ),
              Text(
                'See All',
                style: TextStyle(
                  fontSize: 14,

                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  color: MainColors.secondaryColor[800],
                ),
              ),
            ],
          ),

          const SizedBox(height: 24.0),

          Row(
            spacing: 23,
            children: [
              CardItem(
                item: CardItemModel(
                  bgColor: null,
                  imagePath: MainAssets.book1,
                  nameBook: 'To Kill a Mockingbird',
                  nameAuthor: 'Harper Lee',
                  price: '2,000',
                ),
              ),
              CardItem(
                item: CardItemModel(
                  bgColor: null,
                  imagePath: MainAssets.book2,
                  nameBook: 'The Name of the Wind',
                  nameAuthor: 'Patrick Rothfuss',
                  price: '8,000',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
