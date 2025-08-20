import 'package:ecommerce_mobile/components/go_back_button.dart';
import 'package:ecommerce_mobile/features/cart/screen/input_adress_screen.dart';
import 'package:ecommerce_mobile/preference/assets.dart';
import 'package:ecommerce_mobile/preference/color.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GoBackButton(),
        title: Text(
          'My Bookshelf',
          style: TextStyle(
            color: MainColors.whiteColor,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: MainColors.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: ListView(
          children: [
            buildItem(),
            Divider(thickness: 0.5, color: MainColors.blackColor[800]),
            buildItem(),
            Divider(thickness: 0.5, color: MainColors.blackColor[800]),
            buildItem(),
            Divider(thickness: 0.5, color: MainColors.blackColor[800]),
            buildItem(),
            Divider(thickness: 0.5, color: MainColors.blackColor[800]),
            buildItem(),
            Divider(thickness: 0.5, color: MainColors.blackColor[800]),
            buildItem(),
            Divider(thickness: 0.5, color: MainColors.blackColor[800]),
            buildItem(),
            Divider(thickness: 0.5, color: MainColors.blackColor[800]),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20),
        child: Row(
          spacing: 25,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Total',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: MainColors.blackColor[400],
                  ),
                ),
                Text(
                  'Rp 60,000',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: MainColors.blackColor,
                  ),
                ),
              ],
            ),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return InputAdress();
                    },
                  );
                },
                child: const Text('Checkout'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding buildItem() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0, top: 32.0),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: MainColors.whiteColor[400],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(MainAssets.food1, width: 65, height: 65),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Quinoa fruit salad',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '2packs',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'Rp 20.000',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
