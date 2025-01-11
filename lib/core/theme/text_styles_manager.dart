// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:temp_project/core/helpers/extensions.dart';

import 'fonts_manager.dart';

class AppTextThemes {
  static TextTheme lightTextTheme(BuildContext context) => TextTheme(
        titleLarge: getTextStyle(
          context,
          color: Theme.of(context).colorScheme.onSurface,
          fontSize: 24.0.responsive(context),
        ),
        titleMedium: getTextStyle(
          context,
          color: Theme.of(context).colorScheme.onSurface,
          fontSize: 18.0.responsive(context),
        ),
        titleSmall: getTextStyle(
          context,
          color: Theme.of(context).colorScheme.onSurface,
          fontSize: 16.0.responsive(context),
        ),
        bodyLarge: getTextStyle(
          context,
          color: Theme.of(context).colorScheme.onSurface,
          fontSize: 14.0.responsive(context),
        ),
        bodyMedium: getTextStyle(
          context,
          color: Theme.of(context).colorScheme.onSurface,
          fontSize: 12.0.responsive(context),
        ),
        bodySmall: getTextStyle(
          context,
          color: Theme.of(context).colorScheme.onSurface,
          fontSize: 10.0.responsive(context),
        ),
      );
}

/// *******************************************************
/// This methods to make calling text styles more easier
/// And determine the needed properties in TextStyle.
/// *******************************************************
TextStyle getTextStyle(BuildContext context,
    {required double fontSize, FontWeight? fontWeight, required Color color}) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: AppFonts.alex,
    color: color,
  );
}
