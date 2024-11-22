import 'package:flutter/material.dart';

class Responsive {
  static double figmaHeight = 732;
  static double figmaWidth = 337;
  static late double screenHeight;
  static late double screenWidth;
  static late double responsiveWidth;
  static late double responsiveHeight;

  static void responsive(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    responsiveHeight = screenHeight / figmaHeight;
    responsiveWidth = screenWidth / figmaWidth;
  }
}
