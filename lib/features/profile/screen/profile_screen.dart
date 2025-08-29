import 'package:ecommerce_mobile/components/components.dart';
import 'package:ecommerce_mobile/features/features.dart';
import 'package:ecommerce_mobile/preference/preference.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key, required this.name});

  final String? name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColors.secondaryColor,
      body: ListView(
        padding: EdgeInsets.only(top: 48, bottom: 48),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GoBackButton(),
                    Icon(
                      Icons.edit_square,
                      color: MainColors.primaryColor[800],
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

                const SizedBox(height: 6.0),

                Text(
                  '$name',
                  style: TextStyle(
                    fontSize: 24,
                    color: MainColors.blackColor,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 6.0),

                Row(
                  spacing: 3,
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
                const SizedBox(height: 48.0),

                Container(
                  decoration: BoxDecoration(
                    color: MainColors.primaryColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 70,
                        width: 120,

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '108h',
                              style: TextStyle(
                                fontSize: 20,
                                color: MainColors.whiteColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Total Time',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: MainColors.primaryColor[800],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 70,
                        width: 120,

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '9',
                              style: TextStyle(
                                fontSize: 20,
                                color: MainColors.whiteColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Completed Reads',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: MainColors.primaryColor[800],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 70,
                        width: 120,

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '60',
                              style: TextStyle(
                                fontSize: 20,
                                color: MainColors.whiteColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Books Saved',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: MainColors.primaryColor[800],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 48.0),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
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
          ),

          const SizedBox(height: 24.0),

          SizedBox(
            height: 120,
            child: ListView(
              clipBehavior: Clip.none,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              physics: PageScrollPhysics(),
              children: [
                const SizedBox(width: 24.0),

                CardContinueRead(
                  item: CardContinueReadModel(
                    bgColor: null,
                    imagePath: MainAssets.book2,
                    nameBook: 'The Name of the Wind',
                    nameAuthor: 'Patrick Rothfuss',
                    price: '8,000',
                    readProgressNumber: '76%',
                    readProgressBar: 145,
                  ),
                ),

                const SizedBox(width: 48.0),

                CardContinueRead(
                  item: CardContinueReadModel(
                    bgColor: null,
                    imagePath: MainAssets.book1,
                    nameBook: 'To Kill a Mockingbird',
                    nameAuthor: 'Harper Lee',
                    price: '2,000',
                    readProgressNumber: '90%',
                    readProgressBar: 165,
                  ),
                ),

                const SizedBox(width: 24.0),

                CardContinueRead(
                  item: CardContinueReadModel(
                    bgColor: null,
                    imagePath: MainAssets.book3,
                    nameBook: 'The Martian',
                    nameAuthor: 'Andy Weir',
                    price: '8,000',
                    readProgressNumber: '48%',
                    readProgressBar: 85,
                  ),
                ),

                const SizedBox(width: 24.0),
              ],
            ),
          ),

          const SizedBox(height: 48.0),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
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
          ),

          const SizedBox(height: 24.0),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
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
          ),
        ],
      ),
    );
  }
}
                      // Align(
                      //   alignment: Alignment.centerLeft,
                      //   child: Column(
                      //     children: [
                      //       Text(
                      //         '29',
                      //         style: TextStyle(
                      //           fontSize: 18,
                      //           color: MainColors.primaryColor,
                      //           fontWeight: FontWeight.bold,
                      //         ),
                      //       ),
                      //       Text(
                      //         'Books Read',
                      //         style: TextStyle(
                      //           fontSize: 12,
                      //           fontWeight: FontWeight.w500,
                      //           color: MainColors.blackColor,
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // Align(
                      //   alignment: Alignment.centerRight,
                      //   child: Column(
                      //     children: [
                      //       Text(
                      //         '60',
                      //         style: TextStyle(
                      //           fontSize: 18,
                      //           color: MainColors.primaryColor,
                      //           fontWeight: FontWeight.bold,
                      //         ),
                      //       ),
                      //       Text(
                      //         'Books Saved',
                      //         style: TextStyle(
                      //           fontSize: 12,
                      //           fontWeight: FontWeight.w500,
                      //           color: MainColors.blackColor,
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),