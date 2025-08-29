import 'package:ecommerce_mobile/features/features.dart';
import 'package:ecommerce_mobile/preference/preference.dart';
import 'package:flutter/material.dart';

class BookshelfItem extends StatefulWidget {
  const BookshelfItem({super.key, required this.item});

  final CardItemModel item;

  @override
  State<BookshelfItem> createState() => _BookshelfItemState();
}

class _BookshelfItemState extends State<BookshelfItem> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          spacing: 10,
          children: [
            Container(
              width: 100,
              height: 150,
              decoration: BoxDecoration(
                color: widget.item.bgColor ?? MainColors.whiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x2020200D),
                    spreadRadius: 6,
                    blurRadius: 6,
                    offset: Offset(0, 6),
                  ),
                ],
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailScreen()),
                  );
                },
                child: Image.asset(
                  widget.item.imagePath,
                  width: 80,
                  height: 80,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
