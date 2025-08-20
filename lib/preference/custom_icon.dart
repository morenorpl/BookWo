// Place fonts/CustomIcon.ttf in your fonts/ directory and
// add the following to your pubspec.yaml
// flutter:
//   fonts:
//    - family: CustomIcon
//      fonts:
//       - asset: fonts/CustomIcon.ttf
import 'package:flutter/widgets.dart';

class CustomIcon {
  CustomIcon._();

  static const String _fontFamily = 'CustomIcon';

  static const IconData icfilter = IconData(0xe900, fontFamily: _fontFamily);
  static const IconData icmenu = IconData(0xe901, fontFamily: _fontFamily);
  static const IconData icsearch = IconData(0xe902, fontFamily: _fontFamily);
  static const IconData icshoppingbasket = IconData(0xe903, fontFamily: _fontFamily);
}
