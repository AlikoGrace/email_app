import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? blockScreenHorizontal;
  static double? blockScreenVertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.width;
    blockScreenHorizontal = screenWidth! / 100;
    blockScreenVertical = screenHeight! / 100;
  }
}
