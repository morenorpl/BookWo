import 'package:ecommerce_mobile/features/features.dart';
import 'package:ecommerce_mobile/preference/preference.dart';
import 'package:flutter/material.dart';

class BodySection extends StatelessWidget {
  const BodySection({super.key, required this.category});

  final List<String> category;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
              const SizedBox(height: 48.0),

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
                  imagePath: MainAssets.book4,
                  nameBook: 'The Girl with the Dragon Tattoo',
                  nameAuthor: 'Stieg Larsson',
                  price: '18,000',
                ),
              ),

              SizedBox(width: 16),
              CardItem(
                item: CardItemModel(
                  imagePath: MainAssets.book3,
                  nameBook: 'The Martian',
                  nameAuthor: 'Andy Weir',
                  price: '10,000',
                ),
              ),
              SizedBox(width: 16),
              CardItem(
                item: CardItemModel(
                  imagePath: MainAssets.book2,
                  nameBook: 'The Name of the Wind',
                  nameAuthor: 'Patrick Rothfuss',
                  price: '8,000',
                ),
              ),
              SizedBox(width: 16),
              CardItem(
                item: CardItemModel(
                  bgColor: null,
                  imagePath: MainAssets.book1,
                  nameBook: 'To Kill a Mockingbird',
                  nameAuthor: 'Harper Lee',
                  price: '2,000',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
