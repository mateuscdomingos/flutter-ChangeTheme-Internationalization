import 'package:appbasepe/blocs/language.dart';
import 'package:appbasepe/blocs/theme.dart';
import 'package:appbasepe/core/internationalization/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:appbasepe/screans/home_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) =>
              ThemeChanger(ThemeColorProps.light, ThemeTextProps.small),
        ),
        ChangeNotifierProvider(
          create: (_) => LanguageChanger(LanguageProps.pt),
        ),
      ],
      child: MaterialAppWithTheme(),
    );
  }
}

class MaterialAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    final applocalizationsdelegate = AppLocalizations.teste(context);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme.getTheme(),
      home: HomeScreen(),
      localizationsDelegates: [
        applocalizationsdelegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('pt', ''), // Portuguese, no country code
        const Locale('en', ''), // English, no country code
        const Locale('es', ''), // Spanish, no country code
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale.languageCode) {
            return supportedLocale;
          }
        }
        return supportedLocales.first;
      },
    );
  }
}
