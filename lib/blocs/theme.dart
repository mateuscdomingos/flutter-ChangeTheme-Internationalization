import 'package:flutter/material.dart';

enum ThemeProps { light, dark }

class ThemeChanger with ChangeNotifier {
  ThemeChanger(ThemeData theme, TextTheme textTheme) {
    final finalTheme = theme.copyWith(
      textTheme: textTheme.apply(
        bodyColor: Colors.black,
      ),
    );
    _themeData = finalTheme;
  }

  static final small = TextTheme(
    headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    headline6: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
    bodyText2: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal),
  );

  static var ligth = ThemeData(
    primaryColor: Color(0xFF508744),
    scaffoldBackgroundColor: Color(0xFFF6F6F6),
    cardColor: Color(0xFFFFFFFF),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static final dark = ThemeData(
    primaryColor: Color(0xFF508744),
    scaffoldBackgroundColor: Color(0xFF091F18),
    cardColor: Color(0xFF113026),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: TextTheme(
      headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
      headline6: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
      bodyText2: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal),
    ),
  );

  ThemeData _themeData;
  ThemeProps _valueTheme = ThemeProps.light;

  TextTheme _textThemeData = small;

  ThemeData getTheme() => _themeData;
  ThemeProps getValueTheme() => _valueTheme;

  TextTheme getTextTheme() => _textThemeData;

  void setTheme(ThemeProps value) {
    this._valueTheme = value;
    if (value == ThemeProps.light) {
      this._themeData = ligth;
    } else {
      this._themeData = dark;
    }

    notifyListeners();
  }
}
