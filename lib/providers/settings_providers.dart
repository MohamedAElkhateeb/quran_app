import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;

  String currentLang = "en";

  void changeAppLang(String newLang) {
    if (newLang == currentTheme) return;
    currentLang = newLang;
    saveLang(newLang);
    notifyListeners();
  }
  void changeAppTheme(ThemeMode newTheme) {
    if (newTheme == currentTheme) return;
    currentTheme = newTheme;
    saveTheme(newTheme);
    notifyListeners();
  }
  bool isLightTheme(){
  return currentTheme == ThemeMode.light;
}
bool isEnglish(){
    return currentLang == 'en';
}
void saveTheme(ThemeMode themeMode)async{
    SharedPreferences prefs = await SharedPreferences.getInstance();

    if(themeMode==ThemeMode.light){
      prefs.setString('theme', 'light');
    }else{
      prefs.setString('theme', 'dark');
    }
}
  void getTheme()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
  String theme =prefs.getString('theme')??'light';
  if(theme=='light'){
    currentTheme = ThemeMode.light;
  }else{
    currentTheme = ThemeMode.dark;
  }
  notifyListeners();
  }
  void saveLang(String lang)async{
    SharedPreferences prefs = await SharedPreferences.getInstance();

    if(lang=='en'){
      prefs.setString('lang', 'en');
    }else{
      prefs.setString('lang', 'ar');
    }
  }
  void getLang()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String lang =prefs.getString('lang')??'en';
    if(lang=='en'){
      currentLang = 'en';
    }else{
      currentLang = 'ar';
    }
    notifyListeners();
  }
}