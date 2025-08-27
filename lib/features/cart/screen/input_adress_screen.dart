import 'package:flutter/material.dart';

class InputAdress extends StatelessWidget {
  const InputAdress({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(children: [Text('Delivery Adress')]),
    );
  }
}
