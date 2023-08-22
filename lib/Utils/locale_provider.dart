import 'package:flutter/material.dart';

import '../language/l10n.dart';

class LocaleProvider extends ChangeNotifier {
  Locale? _locale;
  Locale? localeStored = Locale('en');
  Locale? get locale => _locale;

  void setLocale(Locale locale) {
    if (!L10n.all.contains(locale)) return;

    _locale = locale;
    notifyListeners();
  }

  Locale getStoredLocale() {
    return localeStored ?? Locale('en');
  }

  void clearLocale() {
    _locale = null;
    notifyListeners();
  }
}
