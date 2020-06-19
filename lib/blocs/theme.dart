import 'package:flutter/material.dart';
import 'package:appbasepe/data/custom_theme_data.dart';

enum ThemeProps { light, dark }
enum ThemeTextProps { small, medium }

class ThemeChanger with ChangeNotifier {
  ThemeChanger(ThemeProps theme, ThemeTextProps textTheme) {
    setTheme(theme, textTheme);
  }

  ThemeData _themeData;
  ThemeProps _valueTheme;
  ThemeTextProps _valueThemeText;

  ThemeData getTheme() => _themeData;

  ThemeProps getValueTheme() => _valueTheme;
  ThemeTextProps getTextTheme() => _valueThemeText;

  void setTheme(ThemeProps theme, ThemeTextProps textTheme) {
    ThemeData dataTheme;
    TextTheme dataThemeText;

    switch (theme) {
      case ThemeProps.light:
        {
          dataTheme = ligth;
          _valueTheme = ThemeProps.light;
        }
        break;

      case ThemeProps.dark:
        {
          dataTheme = dark;
          _valueTheme = ThemeProps.dark;
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
    }

    final finalTheme = dataTheme.copyWith(
      textTheme: dataThemeText.apply(
        bodyColor: dataTheme.colorScheme.onPrimary,
      ),
    );
    _themeData = finalTheme;

    notifyListeners();
  }
}
