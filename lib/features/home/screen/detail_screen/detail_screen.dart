import 'package:ecommerce_mobile/components/components.dart';
import 'package:ecommerce_mobile/features/features.dart';
import 'package:ecommerce_mobile/preference/preference.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: MainColors.secondaryColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.85,
              decoration: const BoxDecoration(color: Colors.transparent),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 12,
                      right: 12,
                      top: 12,
                      bottom: 0,
                    ),
                    child: Container(
                      padding: EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: MainColors.primaryColor[200],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Text(
                                'Book Detail',
                                style: TextStyle(
                                  color: MainColors.primaryColor[800],
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
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

                          const SizedBox(height: 24),

                          Container(
                            height: 225,
                            width: 150,
                            decoration: BoxDecoration(
                              color: MainColors.primaryColor,
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(MainAssets.book1),
                                fit: BoxFit.cover,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x2020200D),
                                  spreadRadius: 3,
                                  blurRadius: 6,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 12),

                          Text(
                            'To Kill a Mockingbird',
                            style: TextStyle(
                              color: MainColors.blackColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Row(
                            spacing: 5,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'by',
                                style: TextStyle(
                                  color: MainColors.primaryColor[800],
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                'Harper Lee',
                                style: TextStyle(
                                  color: MainColors.primaryColor[800],
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),

                          Container(
                            padding: EdgeInsets.all(8),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.star_rate_rounded,
                                  size: 20,
                                  color: MainColors.primaryColor,
                                ),
                                Icon(
                                  Icons.star_rate_rounded,
                                  size: 20,
                                  color: MainColors.primaryColor,
                                ),
                                Icon(
                                  Icons.star_rate_rounded,
                                  size: 20,
                                  color: MainColors.primaryColor,
                                ),
                                Icon(
                                  Icons.star_rate_rounded,
                                  size: 20,
                                  color: MainColors.primaryColor,
                                ),
                                Icon(
                                  Icons.star_half_rounded,
                                  size: 20,
                                  color: MainColors.primaryColor,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        SingleChildScrollView(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 24,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Row(
                                  spacing: 15,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: MainColors.secondaryColor[600],
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Text(
                                        'Classic',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: MainColors.secondaryColor[800],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: MainColors.secondaryColor[600],
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Text(
                                        'Fiction',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: MainColors.secondaryColor[800],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: MainColors.secondaryColor[600],
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Text(
                                        'Drama',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: MainColors.secondaryColor[800],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 24),
                                Divider(
                                  thickness: 1,
                                  height: 2,
                                  color: MainColors.secondaryColor[600],
                                ),
                                const SizedBox(height: 24),
                                Text(
                                  'Description',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    color: MainColors.blackColor,
                                  ),
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  'Set in the fictional town of Maycomb, Alabama, during the 1930s, this novel follows the young Scout Finch, her brother Jem, and their father Atticus, a lawyer. The story unfolds as Atticus takes on the controversial case of Tom Robinson, a Black man falsely accused of raping a white woman. Through the children’s eyes, the book explores themes of racial injustice, innocence, and the complex nature of human morality in the American South.',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: MainColors.secondaryColor[800],
                                  ),
                                  maxLines: 15,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ),

                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          child: ShaderMask(
                            shaderCallback: (bounds) {
                              return LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  MainColors.whiteColor,
                                  Colors.white.withValues(alpha: 0.0),
                                ],
                                stops: [0.0, 0.5],
                              ).createShader(bounds);
                            },
                            child: Container(
                              height: 50,
                              color: MainColors.secondaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: MainColors.blackColor[800]!,
                      blurRadius: 10.0,
                      spreadRadius: 0.2,
                      offset: Offset(0.0, 0.0),
                    ),
                  ],
                  color: MainColors.secondaryColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(0),
                    topLeft: Radius.circular(0),
                  ),
                ),
                child: Row(
                  spacing: 10,
                  children: [
                    Container(
                      padding: EdgeInsets.all(11),
                      decoration: BoxDecoration(
                        color: MainColors.primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isFavorite = !isFavorite;
                          });
                        },
                        child: Icon(
                          isFavorite
                              ? Icons.bookmark_rounded
                              : Icons.bookmark_outline_rounded,
                          color: MainColors.secondaryColor,
                        ),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CartScreen(),
                            ),
                          );
                        },
                        child: const Text('Add To Bag'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
