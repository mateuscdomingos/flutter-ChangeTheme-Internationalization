import 'package:appbasepe/blocs/theme.dart';
import 'package:flutter/material.dart';
import 'package:appbasepe/screans/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeChanger(ThemeProps.light, ThemeTextProps.small),
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
