import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

class HomePageParams {
  /// Bottom Navigation radius
  static const double bottomNavCornerRaidus = 15;

  /// dark colorshceme
  static ThemeData darkTheme = FlexThemeData.dark(
    scheme: FlexScheme.orangeM3,
    useMaterial3: true,
  );

  /// light colorshceme
  static ThemeData lightTheme = FlexThemeData.light(
    scheme: FlexScheme.orangeM3,
    useMaterial3: true,
  );
  //To check if a string is a valid URL
  static bool isURL(String url) {
    // Regular expression pattern to match a URL
    const pattern = r'^(https?|ftp):\/\/[^\s/$.?#].[^\s]*$';
    final regex = RegExp(pattern);
    return regex.hasMatch(url);
  }
}
