import 'package:flutter/material.dart';
import 'package:shopify_app/src/core/utils/colors.dart';

class StylesApp {
  // Font Sizes
  static const double titleFontSize = 16;
  static const double headerFontSize = 20;
  static const double labelFontSize = 14;
  static const double inputFontSize = 16;
  static const double tagFontSize = 14;

  //  Font Weights
  static const FontWeight bold = FontWeight.bold;
  static const FontWeight normal = FontWeight.normal;

  // Test Styles
  static const TextStyle headerStyle = TextStyle(
    fontSize: headerFontSize,
    fontWeight: bold,
    color: ColorsApp.textPrimary,
  );
  static const TextStyle titleStyle = TextStyle(
    fontSize: titleFontSize,
    fontWeight: bold,
    color: ColorsApp.textPrimary,
  );

  static TextStyle labelStyle = const TextStyle(
    fontSize: labelFontSize,
    fontWeight: normal,
    color: ColorsApp.textSecondary,
  );

  static TextStyle inputStyle = const TextStyle(
    fontSize: inputFontSize,
    color: ColorsApp.textPrimary,
  );
  static TextStyle drawerStyle = const TextStyle(
    fontSize: inputFontSize,
    fontWeight: bold,
    color: ColorsApp.iconThemeColor,
  );

  static TextStyle tagStyle = const TextStyle(
    fontSize: tagFontSize,
    fontWeight: bold,
    color: ColorsApp.textPrimary,
  );
  static TextStyle textStyle16B = const TextStyle(
    fontSize: 16,
    fontWeight: bold,
    color: ColorsApp.textPrimary,
  );
}
