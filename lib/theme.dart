import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppTheme with ChangeNotifier {
  static const String _localeKey = 'locale';
  Locale _locale = const Locale('en');
  GlobalKey<NavigatorState>? _navigatorKey;

  AppTheme() {
    _loadLocale();
  }

  void setNavigatorKey(GlobalKey<NavigatorState> key) {
    _navigatorKey = key;
  }

  Locale get locale => _locale;

  Future<void> _loadLocale() async {
    final prefs = await SharedPreferences.getInstance();
    final localeCode = prefs.getString(_localeKey);
    if (localeCode != null) {
      _locale = Locale(localeCode);
      notifyListeners();
    }
  }

  Future<void> setLocale(Locale newLocale) async {
    if (_locale != newLocale) {
      _locale = newLocale;
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_localeKey, newLocale.languageCode);
      notifyListeners();

      // Force refresh all widgets
      if (_navigatorKey != null) {
        _navigatorKey!.currentState?.setState(() {});
      }
    }
  }
}
