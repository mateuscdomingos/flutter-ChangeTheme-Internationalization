import 'package:flutter/material.dart';

enum LanguageProps { pt, en, es }

class LanguageChanger with ChangeNotifier {
  LanguageChanger(LanguageProps language) {
    setLanguage(language);
  }

  Locale _language;
  LanguageProps _valueLanguage;

  Locale getLanguage() => _language;
  LanguageProps getValueLanguage() => _valueLanguage;

  void setLanguage(LanguageProps language) {
    switch (language) {
      case LanguageProps.pt:
        {
          _language = Locale('pt', '');
          _valueLanguage = LanguageProps.pt;
        }
        break;

      case LanguageProps.en:
        {
          _language = Locale('en', '');
          _valueLanguage = LanguageProps.en;
        }
        break;

      case LanguageProps.es:
        {
          _language = Locale('es', '');
          _valueLanguage = LanguageProps.es;
        }
        break;
    }

    notifyListeners();
  }
}
