import 'dart:ui';

class CardContinueReadModel {
  final String imagePath;
  final String nameBook;
  final String nameAuthor;
  final String readProgress;
  final String price;
  Color? bgColor = Color(0xffFFFFFF);

  CardContinueReadModel({
    required this.imagePath,
    required this.nameBook,
    required this.nameAuthor,
    required this.readProgress,
    required this.price,
    this.bgColor,
  });
}
