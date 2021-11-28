import 'dart:ui';
import 'package:flutter/widgets.dart';

extension DarkMode on BuildContext {
  /// is dark mode currently enabled?
  bool isDarkMode() {
    final brightness = MediaQuery.of(this).platformBrightness;
    return brightness == Brightness.dark;
  }
}
