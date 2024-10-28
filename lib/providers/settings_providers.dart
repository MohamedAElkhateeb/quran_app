import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;

  String currentLang = "en";

  void changeAppLang(String newLang) {
    if (newLang == currentTheme) return;
    currentLang = newLang;
    notifyListeners();
  }
  void changeAppTheme(ThemeMode newTheme) {
    if (newTheme == currentTheme) return;
    currentTheme = newTheme;
    notifyListeners();
  }
  bool isLightTheme(){
  return currentTheme == ThemeMode.light;
}
bool isEnglish(){
    return currentLang == 'en';
}
}