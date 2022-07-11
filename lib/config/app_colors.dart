import 'package:flutter/material.dart';

class AppColors {
  static Color white = Color(0xFFFFFFFF);

  static Color grey200 = Color(0xFFEEEDED);

  static Color grey700 = Color(0xFF616060);

  static Color primaryGreen = Color(0xFF416D6D);

  static Color blueGrey300 = Color(0xFFA3C2CA);

  static Color orange100 = Color(0xFFEFD9D3);

  static List<BoxShadow> shadowList = [
    BoxShadow(
      color: grey700.withOpacity(0.6),
      blurRadius: 15,
      spreadRadius: -8,
      offset: Offset(0, 10),
    )
  ];
}
