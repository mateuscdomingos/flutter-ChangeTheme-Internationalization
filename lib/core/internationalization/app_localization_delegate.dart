import 'package:appbasepe/blocs/language.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app_localizations.dart';

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  final BuildContext context;
  const AppLocalizationsDelegate(this.context);

  @override
  bool isSupported(Locale locale) {
    return ['pt', 'en', 'es'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    final language = Provider.of<LanguageChanger>(context);
    var localizations = AppLocalizations(language.getLanguage());
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) => true;
}
