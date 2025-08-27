import 'package:ecommerce_mobile/preference/preference.dart';
import 'package:ecommerce_mobile/features/features.dart';
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
          Padding(
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
                          fontSize: 32,
                          fontFamily: 'Josefin sans',
                          height: 1,
                          fontWeight: FontWeight.bold,
                          color: MainColors.blackColor,
                        ),
                        children: <TextSpan>[
                          TextSpan(text: 'Whats up '),
                          TextSpan(
                            text: '$name',
                            style: TextStyle(
                              color: MainColors.primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: ',\nwhat genre are you feeling today? ',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                Row(
                  spacing: 22,
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          suffixIcon: Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: MainColors.primaryColor,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                            ),
                            child: Icon(
                              CustomIcon.icsearch,
                              size: 16,
                              color: MainColors.blackColor,
                            ),
                          ),
                          hint: Text('Search for books that suits you'),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 48.0),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'You Should Read These',
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

                Text(
                  '(Suggested for you)',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: MainColors.secondaryColor[800],
                  ),
                ),

                const SizedBox(height: 25.0),

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
                        imagePath: 'assets/images/Glowing-Berry-Fruit.png',
                        nameBook: 'Berry mango combo',
                        nameAuthor: 'Moreno Ibrahim',
                        price: '8,000',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 72.0),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Book Genres',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: MainColors.blackColor,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 5.0),

          SizedBox(
            height: 40,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 24),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Text(
                  category[index],
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: MainColors.secondaryColor[800],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(width: 26);
              },
              itemCount: category.length,
            ),
          ),

          const SizedBox(height: 10.0),

          SizedBox(
            height: 270,
            child: ListView(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              shrinkWrap: true,
              children: [
                CardItem(
                  item: CardItemModel(
                    imagePath: 'assets/images/breakfast-quinoa-salad.png',
                    nameBook: 'Quinoa fruit salad',
                    nameAuthor: 'Moreno Ibrahim',
                    price: '10,000',
                  ),
                ),
                SizedBox(width: 16),
                CardItem(
                  item: CardItemModel(
                    imagePath: 'assets/images/Tropical-Fruit-Salad.png',
                    nameBook: 'Tropical fruit salad',
                    nameAuthor: 'Moreno Ibrahim',
                    price: '10,000',
                  ),
                ),
                SizedBox(width: 16),
                CardItem(
                  item: CardItemModel(
                    imagePath: 'assets/images/melon-fruit-salad.png',
                    nameBook: 'Melon fruit salad',
                    nameAuthor: 'Moreno Ibrahim',
                    price: '10,000',
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

// Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 24.0),
//             child: Row(
//               spacing: 26,
//               children: [
//                 Column(
//                   spacing: 0,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Hottest',
//                       style: TextStyle(
//                         fontSize: 22,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                     Image.asset('assets/images/Highlight-Line.png'),
//                   ],
//                 ),
//                 Row(
//                   spacing: 26,
//                   children: [
//                     Text(
//                       'Popular',
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.w500,
//                         color: Color(0xff938DB5),
//                       ),
//                     ),
//                     Text(
//                       'New Combo',
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.w500,
//                         color: Color(0xff938DB5),
//                       ),
//                     ),
//                     Text(
//                       'Top',
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.w500,
//                         color: Color(0xff938DB5),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
