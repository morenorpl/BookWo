import 'dart:ui';

class CardContinueReadModel {
  final String imagePath;
  final String nameBook;
  final String nameAuthor;
  final String readProgressNumber;
  final double readProgressBar;
  final String price;
  Color? bgColor = Color(0xffFFFFFF);

  CardContinueReadModel({
    required this.imagePath,
    required this.nameBook,
    required this.nameAuthor,
    required this.readProgressNumber,
    required this.readProgressBar,
    required this.price,
    this.bgColor,
  });
}
