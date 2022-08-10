import 'package:flutter/material.dart';

Map<int, Color> swatchOpacity = {
  50 : const Color.fromRGBO(134, 109, 109, .1),
  100 : const Color.fromRGBO(134, 109, 109, .2),
  200 : const Color.fromRGBO(134, 109, 109, .3),
  300 : const Color.fromRGBO(134, 109, 109, .4),
  400 : const Color.fromRGBO(134, 109, 109, .5),
  500 : const Color.fromRGBO(134, 109, 109, .6),
  600 : const Color.fromRGBO(134, 109, 109, .7),
  700 : const Color.fromRGBO(134, 109, 109, .8),
  800 : const Color.fromRGBO(134, 109, 109, .9),
  900 : const Color.fromRGBO(134, 109, 109, 1),

};

abstract class CustomColors {
  static Color customInput = const Color(0xFFFFEEE5);
  static Color customBackground = const Color(0xFFE5E5E5); 
  static Color customInput2 = const Color(0xFFE9EDF5);
  static Color customText2 = const Color(0xFFF97115);
  static Color customText = const Color(0xFF1D293F);
  static Color customText3 = const Color(0xFF1D293F);
  static Color customCardBackground = const Color(0xFFF9F0F0);
  static Color customText4 = const Color(0xFFF91515);
  static Color customWhite = const Color(0xFFFFFFFF);
  static Color customBlackText = const Color(0xFF1D293F);
  static Color customGrey = const Color(0xFFE9EDF5);

  static MaterialColor customSwatchColor = MaterialColor(
    0xFF866D6D, 
    swatchOpacity
  );

}