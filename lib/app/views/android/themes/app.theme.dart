import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    brightness: Brightness.light,
    primaryColor: const Color(0xFFFD1A55),
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: Colors.white,
    ),
  );
}
