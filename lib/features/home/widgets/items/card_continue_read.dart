import 'package:ecommerce_mobile/features/features.dart';
import 'package:ecommerce_mobile/preference/preference.dart';
import 'package:flutter/material.dart';

class CardContinueRead extends StatefulWidget {
  const CardContinueRead({super.key, required this.item});

  final CardContinueReadModel item;

  @override
  State<CardContinueRead> createState() => _CardContinueReadState();
}

class _CardContinueReadState extends State<CardContinueRead> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 365,
      decoration: BoxDecoration(
        color: widget.item.bgColor ?? MainColors.secondaryColor[200],
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Color(0x2020200D),
            spreadRadius: 0,
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
        child: Row(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: MainColors.primaryColor,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(widget.item.imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.item.nameBook,
                  style: TextStyle(
                    color: MainColors.blackColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  widget.item.nameAuthor,
                  style: TextStyle(
                    color: MainColors.blackColor[800],
                    fontSize: 12,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 20),
                Row(
                  spacing: 10,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 175,
                          height: 5,
                          decoration: BoxDecoration(
                            color: MainColors.whiteColor[600],
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        Positioned(
                          child: Container(
                            width: widget.item.readProgressBar,
                            height: 5,
                            decoration: BoxDecoration(
                              color: MainColors.primaryColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      widget.item.readProgressNumber,
                      style: TextStyle(
                        color: MainColors.blackColor[800],
                        fontSize: 12,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
