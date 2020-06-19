import 'package:flutter/material.dart';
import 'package:appbasepe/data/custom_theme_data.dart';

enum ThemeColorProps { light, dark }
enum ThemeTextProps { small, medium, large, extraLarge }

class ThemeChanger with ChangeNotifier {
  ThemeChanger(ThemeColorProps theme, ThemeTextProps textTheme) {
    setTheme(theme, textTheme);
  }

  ThemeData _themeData; // application theme
  ThemeColorProps _valueThemeColor; // value application theme color
  ThemeTextProps _valueThemeText; // value application text theme

  ThemeData getTheme() =>
      _themeData; // used to apply the theme in the application

  ThemeColorProps getThemeColor() =>
      _valueThemeColor; // used to know the theme color

  ThemeTextProps getThemeText() =>
      _valueThemeText; // used to know the text theme

  void setTheme(ThemeColorProps theme, ThemeTextProps textTheme) {
    ThemeData dataTheme;
    TextTheme dataThemeText;

    switch (theme) {
      case ThemeColorProps.light:
        {
          dataTheme = ligth;
          _valueThemeColor = ThemeColorProps.light;
        }
        break;

      case ThemeColorProps.dark:
        {
          dataTheme = dark;
          _valueThemeColor = ThemeColorProps.dark;
        }
        break;
    }

    switch (textTheme) {
      case ThemeTextProps.small:
        {
          dataThemeText = small;
          _valueThemeText = ThemeTextProps.small;
        }
        break;

      case ThemeTextProps.medium:
        {
          dataThemeText = medium;
          _valueThemeText = ThemeTextProps.medium;
        }
        break;

      case ThemeTextProps.large:
        {
          dataThemeText = large;
          _valueThemeText = ThemeTextProps.large;
        }
        break;

      case ThemeTextProps.extraLarge:
        {
          dataThemeText = extraLarge;
          _valueThemeText = ThemeTextProps.extraLarge;
        }
        break;
    }

    // merge theme and text theme
    final finalTheme = dataTheme.copyWith(
      textTheme: dataThemeText.apply(
        bodyColor: dataTheme.colorScheme.onPrimary,
      ),
    );
    _themeData = finalTheme;

    notifyListeners();
  }
}
