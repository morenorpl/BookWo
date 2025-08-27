import 'package:ecommerce_mobile/components/components.dart';
import 'package:ecommerce_mobile/features/features.dart';
import 'package:ecommerce_mobile/preference/preference.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GoBackButton(),
        title: Text(
          'My Shopping Bag',
          style: TextStyle(
            color: MainColors.whiteColor,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: MainColors.primaryColor,
      ),
      body: Container(
        color: MainColors.secondaryColor,
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 24),
              child: Column(
                children: [
                  buildItem(),
                  Divider(thickness: 0.5, color: MainColors.blackColor[800]),
                  buildItem(),
                  Divider(thickness: 0.5, color: MainColors.blackColor[800]),
                  buildItem(),
                  Divider(thickness: 0.5, color: MainColors.blackColor[800]),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: MainColors.secondaryColor,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: MainColors.blackColor[800]!,
              blurRadius: 25.0,
              spreadRadius: 0.5,
              offset: Offset(0.0, 1.0),
            ),
          ],
        ),
        child: Padding(
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
                      color: MainColors.secondaryColor[800],
                    ),
                  ),
                  Text(
                    'Rp 60,000',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: MainColors.primaryColor[600],
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
                width: 80,
                height: 100,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: MainColors.secondaryColor[600],
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(MainAssets.book1),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x2020200D),
                      spreadRadius: 6,
                      blurRadius: 6,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
              ),

              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'To Kill a Mockingbird',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'x1',
                      style: TextStyle(
                        fontSize: 16,
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
