import 'package:appbasepe/blocs/theme.dart';
import 'package:flutter/material.dart';
import 'package:appbasepe/screans/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeChanger(ligth, small),
      child: MaterialAppWithTheme(),
    );
  }
}

class MaterialAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme.getTheme(),
      home: HomeScreen(),
    );
  }
}
