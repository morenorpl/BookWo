import 'dart:ui';

class CardItemModel {
  final String imagePath;
  final String nameBook;
  final String nameAuthor;
  final String price;
  Color? bgColor = Color(0xffFFFFFF);

  CardItemModel({
    required this.imagePath,
    required this.nameBook,
    required this.nameAuthor,
    required this.price,
    this.bgColor,
  });
}
