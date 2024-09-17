import 'package:flutter/material.dart';

extension ColorAdditions on Color {
  Color withOpacity(double opacity) =>
      Color.fromRGBO(red, green, blue, opacity);
}

class AppColors {
  static const mainBlue = Color(0xFF273773);
  static const mainDark = Color(0xFF111111);
  static const mainGrey = Color(0xFFEBEBEB);
  static const mainGreen = Color(0xFF56D5A8);
}
