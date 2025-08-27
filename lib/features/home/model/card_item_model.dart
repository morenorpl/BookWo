import 'dart:ui';

class CardItemModel {
  final String imagePath;
  final String nameBook;
  final String nameAuthor;
  String? descriptionBook;
  final String price;
  Color? bgColor = Color(0xffFFFFFF);

  CardItemModel({
    required this.imagePath,
    required this.nameBook,
    required this.nameAuthor,
    this.descriptionBook,
    required this.price,
    this.bgColor,
  });
}
