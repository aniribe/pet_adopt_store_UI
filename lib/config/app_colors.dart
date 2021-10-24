import 'package:flutter/material.dart';

class AppColors {
  static Color white = const Color(0xFFFFFFFF);

  static Color grey200 = const Color(0xFFf8f8f8);

  static Color grey700 = const Color(0xFF616060);

  static Color primaryGreen = const Color(0xFF416D6D);

  static Color blueGrey300 = const Color(0xFFD4DCDF);

  static Color orange100 = const Color(0xFFF0DBBC);

  static List<BoxShadow> shadowList = [
    BoxShadow(
      color: grey700.withOpacity(0.5),
      blurRadius: 20,
      spreadRadius: 7,
      offset: const Offset(0, 10),
    )
  ];
}
