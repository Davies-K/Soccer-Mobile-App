import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static bool isDarkMode(BuildContext context) {
    return MediaQuery.of(context).platformBrightness == Brightness.dark
        ? true
        : false;
  }

  static ThemeData getTheme(BuildContext context) {
    return Theme.of(context);
  }
}
