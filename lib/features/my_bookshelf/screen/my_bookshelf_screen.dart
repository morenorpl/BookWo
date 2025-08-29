import 'package:ecommerce_mobile/components/components.dart';
import 'package:ecommerce_mobile/features/home/model/model.dart';
import 'package:ecommerce_mobile/features/home/widgets/items/bookshelf_item.dart';
import 'package:ecommerce_mobile/preference/preference.dart';
import 'package:flutter/material.dart';

class MyBookshelfScreen extends StatelessWidget {
  const MyBookshelfScreen({super.key});

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
                    Align(
                      alignment: Alignment.centerLeft,
                      child: GoBackButton(),
                    ),

                    Align(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.more_horiz,
                        size: 25,
                        color: MainColors.primaryColor[800],
                      ),
                    ),
                  ],
                ),

                Text(
                  'My Bookshelf',
                  style: TextStyle(
                    color: MainColors.blackColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
                TextFormField(
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
                    hint: Text('Search books in your bookshelf'),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 48),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              spacing: 0,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  spacing: 15,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BookshelfItem(
                      item: CardItemModel(
                        imagePath: MainAssets.book4,
                        nameBook: 'To Kill A MockingBird',
                        nameAuthor: 'Harper Lee',
                        price: '2,000',
                      ),
                    ),
                    BookshelfItem(
                      item: CardItemModel(
                        imagePath: MainAssets.book1,
                        nameBook: 'To Kill A MockingBird',
                        nameAuthor: 'Harper Lee',
                        price: '2,000',
                      ),
                    ),
                    BookshelfItem(
                      item: CardItemModel(
                        imagePath: MainAssets.book2,
                        nameBook: 'To Kill A MockingBird',
                        nameAuthor: 'Harper Lee',
                        price: '2,000',
                      ),
                    ),
                  ],
                ),
                bookShelfBar(),
              ],
            ),
          ),
          const SizedBox(height: 48),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              spacing: 0,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  spacing: 15,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BookshelfItem(
                      item: CardItemModel(
                        imagePath: MainAssets.book2,
                        nameBook: 'To Kill A MockingBird',
                        nameAuthor: 'Harper Lee',
                        price: '2,000',
                      ),
                    ),
                    BookshelfItem(
                      item: CardItemModel(
                        imagePath: MainAssets.book3,
                        nameBook: 'To Kill A MockingBird',
                        nameAuthor: 'Harper Lee',
                        price: '2,000',
                      ),
                    ),
                    BookshelfItem(
                      item: CardItemModel(
                        imagePath: MainAssets.book4,
                        nameBook: 'To Kill A MockingBird',
                        nameAuthor: 'Harper Lee',
                        price: '2,000',
                      ),
                    ),
                  ],
                ),

                bookShelfBar(),
              ],
            ),
          ),

          const SizedBox(height: 48),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              spacing: 0,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  spacing: 15,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BookshelfItem(
                      item: CardItemModel(
                        imagePath: MainAssets.book3,
                        nameBook: 'To Kill A MockingBird',
                        nameAuthor: 'Harper Lee',
                        price: '2,000',
                      ),
                    ),
                    BookshelfItem(
                      item: CardItemModel(
                        imagePath: MainAssets.book2,
                        nameBook: 'To Kill A MockingBird',
                        nameAuthor: 'Harper Lee',
                        price: '2,000',
                      ),
                    ),
                    BookshelfItem(
                      item: CardItemModel(
                        imagePath: MainAssets.book1,
                        nameBook: 'To Kill A MockingBird',
                        nameAuthor: 'Harper Lee',
                        price: '2,000',
                      ),
                    ),
                  ],
                ),

                bookShelfBar(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row bookShelfBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 350,
          height: 10,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: MainColors.secondaryColor,
            borderRadius: BorderRadius.circular(3),
            boxShadow: [
              BoxShadow(
                color: Color(0x2020200D),
                spreadRadius: 3,
                blurRadius: 6,
                offset: Offset(0, 1),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
