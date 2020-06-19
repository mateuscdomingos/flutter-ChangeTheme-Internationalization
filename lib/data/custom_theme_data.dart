import 'package:flutter/material.dart';

final ligth = ThemeData(
  primaryColor: Color(0xFF508744),
  scaffoldBackgroundColor: Color(0xFFF6F6F6),
  cardColor: Color(0xFFFFFFFF),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  colorScheme: ThemeData().colorScheme.copyWith(
        onPrimary: Color(0xFF303030),
      ),
);

final dark = ThemeData(
  primaryColor: Color(0xFF0e3507),
  scaffoldBackgroundColor: Color(0xFF091F18),
  cardColor: Color(0xFF113026),
  brightness: Brightness.dark,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  colorScheme: ThemeData().colorScheme.copyWith(
        onPrimary: Color(0xFFFFFFFF),
      ),
);

final small = TextTheme(
  headline5: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500),
  headline6: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
  bodyText2: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal),
);

final medium = TextTheme(
  headline5: TextStyle(fontSize: 26.0, fontWeight: FontWeight.w500),
  headline6: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w500),
  bodyText2: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),
);

final large = TextTheme(
  headline5: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w500),
  headline6: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w500),
  bodyText2: TextStyle(fontSize: 18.0, fontWeight: FontWeight.normal),
);

final extraLarge = TextTheme(
  headline5: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w500),
  headline6: TextStyle(fontSize: 26.0, fontWeight: FontWeight.w500),
  bodyText2: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal),
);
