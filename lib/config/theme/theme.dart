import 'package:flutter/material.dart';

import './colors.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: CustomColors.primary,
      accentColor: CustomColors.accent,
      highlightColor: CustomColors.highlight,
      splashColor: CustomColors.splash,
    );
  }
}
