import 'package:ecommerce_mobile/preference/preference.dart';
import 'package:flutter/material.dart';

class InputAdress extends StatelessWidget {
  const InputAdress({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 35.0, horizontal: 24.0),
      child: Column(
        children: [
          buildInput(title: 'Delivery Address', hintText: 'Enter your address'),
          buildInput(
            title: 'Number we can call',
            hintText: 'Enter your phone number',
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text('Pay on delivery'),
                ),
              ),
              SizedBox(width: 25),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text('Pay with card'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildInput({required String title, required String hintText}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
          ),
          SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: MainColors.blackColor.withValues(alpha: 0.5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
