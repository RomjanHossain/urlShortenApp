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
}
