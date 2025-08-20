import 'package:ecommerce_mobile/features/cart/screen/cart_screen.dart';
import 'package:ecommerce_mobile/preference/color.dart';
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
      backgroundColor: MainColors.primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            // Top image section
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: const BoxDecoration(color: MainColors.primaryColor),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 24),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 8,
                        ),
                        decoration: BoxDecoration(
                          color: MainColors.blackColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.arrow_back_ios_new_rounded,
                                size: 12,
                                color: MainColors.whiteColor,
                              ),
                              SizedBox(width: 4),
                              Text(
                                'Go Back',
                                style: TextStyle(color: MainColors.whiteColor),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      'assets/images/breakfast-quinoa-salad-detail.png',
                    ),
                  ),
                ],
              ),
            ),

            // Bottom content section
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 40, left: 24, right: 24),
                decoration: const BoxDecoration(
                  color: MainColors.secondaryColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'Quinoa Fruit Salad',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 32,
                        ),
                      ),
                      const SizedBox(height: 32),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  color: MainColors.secondaryColor,
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(color: Colors.black),
                                ),
                                child: const Icon(Icons.remove),
                              ),
                              const SizedBox(width: 24),
                              const Text('1', style: TextStyle(fontSize: 24)),
                              const SizedBox(width: 24),
                              Container(
                                padding: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  color: MainColors.blackColor,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: MainColors.secondaryColor,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.attach_money_rounded,
                                size: 24,
                                color: MainColors.blackColor,
                              ),
                              const Text(
                                '2,000',
                                style: TextStyle(
                                  color: MainColors.blackColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 24,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      const Divider(color: Colors.grey, thickness: 2),
                      const SizedBox(height: 30),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'One Pack Contains:',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Container(
                                height: 2,
                                width: 153,
                                decoration: const BoxDecoration(
                                  color: MainColors.primaryColor,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),

                          const Text(
                            'Red Quinoa, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint.',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),

                          const SizedBox(height: 20),

                          const Divider(color: Colors.grey, thickness: 2),

                          const SizedBox(height: 14),

                          const Text(
                            'If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you. make',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),

                          const SizedBox(height: 28),

                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: MainColors.blackColor,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isFavorite = !isFavorite;
                                    });
                                  },
                                  child: Icon(
                                    isFavorite
                                        ? Icons.favorite
                                        : Icons.favorite_outline_rounded,
                                    color: MainColors.whiteColor,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 60),
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
                                  child: const Text('Add To Basket'),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20), // Extra padding at bottom
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
