import 'package:flutter/material.dart';

class AppTheme {
  static final visualDensity = VisualDensity.adaptivePlatformDensity;
  static final dark = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    colorScheme: ColorScheme.dark(),
    visualDensity: visualDensity,
  );

  static final light = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(),
    visualDensity: visualDensity,
  );
}
